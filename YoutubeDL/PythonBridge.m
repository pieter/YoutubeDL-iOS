//
//  NSObject+PythonBridge.m
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

#import "PythonBridge.h"
#import <Python/Python.h>

static PyObject *getModule(char *moduleName) {
    PyObject *modName = PyString_FromString(moduleName);
    PyObject *module = PyImport_Import(modName);
    Py_DECREF(modName);
    
    return module;
}

static PyObject *getModuleFn(char *mod, char *fn) {
    PyObject *module = getModule(mod);
    PyObject *fnStr = PyString_FromString(fn);
    
    PyObject *function = PyObject_GetAttr(module, fnStr);
    Py_DecRef(fnStr);
    Py_DecRef(module);
    
    return function;
}

static YDL_progressUpdate progressUpdate;
static PyObject *module;

static NSDictionary *parseJSON(char *json) {
    NSData *data = [NSData dataWithBytes:json length:strlen(json)];
    
    NSError *error;
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error) {
        NSLog(@"Error deserializing JSON: %@", error);
        return NULL;
    } else {
        return result;
    }
}

static PyObject *callback(PyObject *o, PyObject *args) {
    NSLog(@"Callback ran!");
    
    char *status;
    PyArg_ParseTuple(args, "s", &status);
    if (progressUpdate) {
        progressUpdate(parseJSON(status));
    }

    Py_RETURN_NONE;
}

PyMethodDef progressCallback = { "progressCallback", callback, METH_VARARGS, NULL };

void YDL_setProgressCallback(YDL_progressUpdate callback) {
    progressUpdate = callback;
}


static PyObject *playlistCallback(PyObject *o, PyObject *args) {
    PyObject *capsule;
    char *strData;
    PyArg_ParseTuple(args, "Os", &capsule, &strData);
    void *cbPtr = PyCapsule_GetPointer(capsule, NULL);
    
    NSDictionary *data = parseJSON(strData);
    YDL_progressUpdate updater = (__bridge YDL_progressUpdate)cbPtr;
    updater(data);
    
    Py_RETURN_NONE;
}

PyMethodDef playlistCallbackDef = { "playlistCallback", playlistCallback, METH_VARARGS, NULL };



void YDL_initialize() {
    NSArray * bundles = [NSBundle allBundles];
    for (NSBundle *bundle in bundles) {
        NSLog(@"Found bundle: %@ %@", bundle, [bundle bundleIdentifier]);
    }
    
    NSString *path = [[NSBundle mainBundle] resourcePath];
    NSString *pythonHome = [path stringByAppendingPathComponent:@"PythonHome"];
    
    Py_SetPythonHome((char *)[pythonHome UTF8String]);
    Py_Initialize();
    // Get the module, so that youtube-dl is loaded ASAP, even if we don't need it yet.
    module = getModule("pytest");
    NSLog(@"Python initialized");
}

void YDL_playlistDataForUrl(NSURL *url, YDL_progressUpdate callback) {
    PyObject *function = getModuleFn("pytest", "load_playlist");
    
    PyObject *context = PyCapsule_New((__bridge void*)callback, NULL, NULL);
    PyObject *progress = PyCFunction_New(&playlistCallbackDef, NULL);
    
    PyObject_CallFunction(function, "sOO", [[url absoluteString] UTF8String], progress, context);
}

void YDL_downloadVideo(NSURL *url, NSURL *filePath) {
    PyObject *function = getModuleFn("pytest", "download");
    PyObject *progress = PyCFunction_New(&progressCallback, NULL);
    
    NSLog(@"Going to download video %@ to: %@", url, filePath);
    PyObject_CallFunction(function, "ssO", [[url absoluteString] UTF8String], [[filePath path] UTF8String], progress);
    NSLog(@"Done from ObjC");
}
