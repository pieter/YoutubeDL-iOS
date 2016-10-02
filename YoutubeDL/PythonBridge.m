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

static PyObject *callback(PyObject *o, PyObject *args) {
    NSLog(@"Callback ran!");
    
    char *status;
    PyArg_ParseTuple(args, "s", &status);
    
    NSLog(@"Current status: %s", status);

    Py_RETURN_NONE;
}

PyMethodDef progressCallback = { "progressCallback", callback, METH_VARARGS, NULL };

static PyObject *module;

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

NSDictionary *YDL_playlistDataForUrl(NSURL *url) {
    PyObject *function = getModuleFn("pytest", "get_info");
    PyObject *retVal = PyObject_CallFunction(function, "s", [[url absoluteString] UTF8String]);
    char *json = PyString_AsString(retVal);
    NSData *data = [NSData dataWithBytes:json length:PyString_Size(retVal)];

    NSError *error;
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error) {
        NSLog(@"Error deserializing JSON: %@", error);
        return NULL;
    } else {
        return result;
    }
}

NSURL *YDL_downloadVideo(NSString *url) {
    PyObject *function = getModuleFn("pytest", "download");
    PyObject *progress = PyCFunction_New(&progressCallback, NULL);
    
    NSLog(@"Going to download video...");
    PyObject_CallFunction(function, "sO", [url UTF8String], progress);
    NSLog(@"Done from ObjC");
    
    return nil;
}
