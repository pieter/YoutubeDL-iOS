/* Generated automatically from ./Modules/config.c.in by makesetup. */
/* -*- C -*- ***********************************************
Copyright (c) 2000, BeOpen.com.
Copyright (c) 1995-2000, Corporation for National Research Initiatives.
Copyright (c) 1990-1995, Stichting Mathematisch Centrum.
All rights reserved.

See the file "Misc/COPYRIGHT" for information on usage and
redistribution of this file, and for a DISCLAIMER OF ALL WARRANTIES.
******************************************************************/

/* Module configuration */

/* !!! !!! !!! This file is edited by the makesetup script !!! !!! !!! */

/* This file contains the table of built-in modules.
   See init_builtin() in import.c. */

#include "Python.h"

#ifdef __cplusplus
extern "C" {
#endif


extern void initthread(void);
extern void initsignal(void);
extern void init_bisect(void);
extern void init_codecs(void);
extern void init_codecs_cn(void);
extern void init_codecs_hk(void);
extern void init_codecs_iso2022(void);
extern void init_codecs_jp(void);
extern void init_codecs_kr(void);
extern void init_codecs_tw(void);
extern void init_collections(void);
extern void initcrypt(void);
extern void init_csv(void);
extern void initdatetime(void);
extern void init_elementtree(void);
extern void init_functools(void);
extern void init_hotshot(void);
extern void init_io(void);
extern void init_json(void);
extern void init_locale(void);
extern void init_lsprof(void);
extern void init_heapq(void);
extern void init_md5(void);
extern void init_multibytecodec(void);
extern void init_multiprocessing(void);
extern void init_random(void);
extern void init_sha(void);
extern void init_sha256(void);
extern void init_sha512(void);
extern void init_socket(void);
extern void init_sre(void);
extern void init_symtable(void);
extern void init_sqlite3(void);
extern void init_ssl(void);
extern void init_struct(void);
extern void init_weakref(void);
extern void initarray(void);
extern void initaudioop(void);
extern void initbinascii(void);
extern void initbsddb185(void);
extern void initbz2(void);
extern void initcmath(void);
extern void initcPickle(void);
extern void initcStringIO(void);
extern void initdl(void);
extern void initerrno(void);
extern void initfcntl(void);
extern void initfuture_builtins(void);
extern void initgrp(void);
extern void initimageop(void);
extern void inititertools(void);
extern void initmath(void);
extern void initmmap(void);
extern void initoperator(void);
extern void initparser(void);
extern void initposix(void);
extern void initpure(void);
extern void initpyexpat(void);
extern void initpwd(void);
extern void initresource(void);
extern void initselect(void);
extern void initstrop(void);
extern void initsyslog(void);
extern void inittermios(void);
extern void inittime(void);
extern void inittiming(void);
extern void initunicodedata(void);
extern void initzipimport(void);
extern void initzlib(void);
extern void init_ctypes_test(void);
extern void init_testcapi(void);
extern void init_ctypes(void);
extern void initposix(void);
extern void initerrno(void);
extern void initpwd(void);
extern void init_sre(void);
extern void init_codecs(void);
extern void init_weakref(void);
extern void initzipimport(void);
extern void init_symtable(void);
extern void initxxsubtype(void);
/* -- ADDMODULE MARKER 1 -- */

extern void PyMarshal_Init(void);
extern void initimp(void);
extern void initgc(void);
extern void init_ast(void);
extern void _PyWarnings_Init(void);

struct _inittab _PyImport_Inittab[] = {

{"thread", initthread},
{"signal", initsignal},
{"_bisect", init_bisect},
{"_codecs", init_codecs},
{"_codecs_cn", init_codecs_cn},
{"_codecs_hk", init_codecs_hk},
{"_codecs_iso2022", init_codecs_iso2022},
{"_codecs_jp", init_codecs_jp},
{"_codecs_kr", init_codecs_kr},
{"_codecs_tw", init_codecs_tw},
{"_collections", init_collections},
{"crypt", initcrypt},
{"_csv", init_csv},
{"datetime", initdatetime},
{"_elementtree", init_elementtree},
{"_functools", init_functools},
{"_hotshot", init_hotshot},
{"_io", init_io},
{"_json", init_json},
{"_locale", init_locale},
{"_lsprof", init_lsprof},
{"_heapq", init_heapq},
{"_md5", init_md5},
{"_multibytecodec", init_multibytecodec},
{"_multiprocessing", init_multiprocessing},
{"_random", init_random},
{"_sha", init_sha},
{"_sha256", init_sha256},
{"_sha512", init_sha512},
{"_socket", init_socket},
{"_sre", init_sre},
{"_symtable", init_symtable},
{"_sqlite3", init_sqlite3},
{"_ssl", init_ssl},
{"_struct", init_struct},
{"_weakref", init_weakref},
{"array", initarray},
{"audioop", initaudioop},
{"binascii", initbinascii},
{"bsddb185", initbsddb185},
{"bz2", initbz2},
{"cmath", initcmath},
{"cPickle", initcPickle},
{"cStringIO", initcStringIO},
{"dl", initdl},
{"errno", initerrno},
{"fcntl", initfcntl},
{"future_builtins", initfuture_builtins},
{"grp", initgrp},
{"imageop", initimageop},
{"itertools", inititertools},
{"math", initmath},
{"mmap", initmmap},
{"operator", initoperator},
{"parser", initparser},
{"posix", initposix},
{"pure", initpure},
{"pyexpat", initpyexpat},
{"pwd", initpwd},
{"resource", initresource},
{"select", initselect},
{"strop", initstrop},
{"syslog", initsyslog},
{"termios", inittermios},
{"time", inittime},
{"timing", inittiming},
{"unicodedata", initunicodedata},
{"zipimport", initzipimport},
{"zlib", initzlib},
{"_ctypes_test", init_ctypes_test},
{"_testcapi", init_testcapi},
{"_ctypes", init_ctypes},
{"posix", initposix},
{"errno", initerrno},
{"pwd", initpwd},
{"_sre", init_sre},
{"_codecs", init_codecs},
{"_weakref", init_weakref},
{"zipimport", initzipimport},
{"_symtable", init_symtable},
{"xxsubtype", initxxsubtype},
/* -- ADDMODULE MARKER 2 -- */

    /* This module lives in marshal.c */
    {"marshal", PyMarshal_Init},

    /* This lives in import.c */
    {"imp", initimp},

    /* This lives in Python/Python-ast.c */
    {"_ast", init_ast},

    /* These entries are here for sys.builtin_module_names */
    {"__main__", NULL},
    {"__builtin__", NULL},
    {"sys", NULL},
    {"exceptions", NULL},

    /* This lives in gcmodule.c */
    {"gc", initgc},

    /* This lives in _warnings.c */
    {"_warnings", _PyWarnings_Init},

    /* Sentinel */
    {0, 0}
};


#ifdef __cplusplus
}
#endif
