# Generated automatically from Makefile.pre by makesetup.
# Top-level Makefile for Python
#
# As distributed, this file is called Makefile.pre.in; it is processed
# into the real Makefile by running the script ./configure, which
# replaces things like @spam@ with values appropriate for your system.
# This means that if you edit Makefile, your changes get lost the next
# time you run the configure script.  Ideally, you can do:
#
#	./configure
#	make
#	make test
#	make install
#
# If you have a previous version of Python installed that you don't
# want to overwrite, you can use "make altinstall" instead of "make
# install".  Refer to the "Installing" section in the README file for
# additional details.
#
# See also the section "Build instructions" in the README file.

# === Variables set by makesetup ===

MODOBJS=          Modules/threadmodule.o  Modules/signalmodule.o  Modules/_bisectmodule.o  Modules/_codecsmodule.o  Modules/_codecs_cn.o  Modules/_codecs_hk.o  Modules/_codecs_iso2022.o  Modules/_codecs_jp.o  Modules/_codecs_kr.o  Modules/_codecs_tw.o  Modules/_collectionsmodule.o  Modules/cryptmodule.o  Modules/_csv.o  Modules/datetimemodule.o  Modules/_elementtree.o   Modules/_functoolsmodule.o  Modules/_hotshot.o  Modules/bufferedio.o Modules/bytesio.o Modules/fileio.o Modules/iobase.o Modules/_iomodule.o Modules/stringio.o Modules/textio.o  Modules/_json.o  Modules/_localemodule.o  Modules/_lsprof.o Modules/rotatingtree.o  Modules/_heapqmodule.o  Modules/md5module.o Modules/md5.o  Modules/multibytecodec.o  Modules/multiprocessing.o Modules/socket_connection.o Modules/semaphore.o  Modules/_randommodule.o  Modules/shamodule.o  Modules/sha256module.o  Modules/sha512module.o  Modules/socketmodule.o  Modules/_sre.o  Modules/symtablemodule.o  Modules/cache.o Modules/connection.o Modules/cursor.o Modules/microprotocols.o Modules/module.o Modules/prepare_protocol.o Modules/row.o Modules/statement.o Modules/util.o  Modules/_ssl.o  Modules/_struct.o  Modules/_weakref.o  Modules/arraymodule.o  Modules/audioop.o  Modules/binascii.o  Modules/bsddbmodule.o  Modules/bz2module.o  Modules/cmathmodule.o Modules/_math.o  Modules/cPickle.o  Modules/cStringIO.o  Modules/dlmodule.o  Modules/errnomodule.o  Modules/fcntlmodule.o  Modules/future_builtins.o  Modules/grpmodule.o  Modules/imageop.o  Modules/itertoolsmodule.o  Modules/mathmodule.o  Modules/mmapmodule.o  Modules/operator.o  Modules/parsermodule.o  Modules/posixmodule.o  Modules/puremodule.o  Modules/xmlparse.o Modules/xmlrole.o Modules/xmltok.o Modules/pyexpat.o  Modules/pwdmodule.o  Modules/resource.o  Modules/selectmodule.o  Modules/stropmodule.o  Modules/syslogmodule.o  Modules/termios.o  Modules/timemodule.o  Modules/timingmodule.o  Modules/unicodedata.o  Modules/zipimport.o  Modules/zlibmodule.o  Modules/_ctypes_test.o  Modules/_testcapimodule.o  Modules/_ctypes.o Modules/callbacks.o Modules/callproc.o Modules/stgdict.o Modules/cfield.o Modules/prep_cif.o Modules/types.o Modules/raw_api.o Modules/java_raw_api.o Modules/closures.o Modules/ffi64_x86_64.o Modules/unix64_x86_64.o  Modules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o  Modules/_weakref.o  Modules/zipimport.o  Modules/symtablemodule.o  Modules/xxsubtype.o
MODLIBS=        $(LOCALMODLIBS) $(BASEMODLIBS)

# === Variables set by configure
VERSION=	2.7
srcdir=		.

abs_srcdir=	/Users/rkm/projects/beeware/Python-Apple-support/2.7/build/iOS/Python-2.7.12-iphonesimulator.x86_64
abs_builddir=	/Users/rkm/projects/beeware/Python-Apple-support/2.7/build/iOS/Python-2.7.12-iphonesimulator.x86_64
build=		x86_64-apple-darwin15.5.0
host=		x86_64-apple-ios

CC=		xcrun --sdk iphonesimulator clang -arch x86_64 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator9.3.sdk -miphoneos-version-min=7.0 
CXX=		c++
MAINCC=		$(CC)
LINKCC=		$(PURIFY) $(MAINCC)
AR=		ar
RANLIB=		ranlib
SVNVERSION=	svnversion $(srcdir)
HGVERSION=	hg id -i $(srcdir)
HGTAG=		hg id -t $(srcdir)
HGBRANCH=	hg id -b $(srcdir)
PGO_PROF_GEN_FLAG=-fprofile-instr-generate
PGO_PROF_USE_FLAG=-fprofile-instr-use=code.profclangd
LLVM_PROF_MERGER=llvm-profdata merge -output=code.profclangd *.profclangr
LLVM_PROF_FILE=LLVM_PROFILE_FILE="code-%p.profclangr"
LLVM_PROF_ERR=yes

GNULD=          no

# Shell used by make (some versions default to the login shell, which is bad)
SHELL=		/bin/sh

# Use this to make a link between python$(VERSION) and python in $(BINDIR)
LN=		ln

# Portable install script (configure doesn't always guess right)
INSTALL=	/usr/bin/install -c
INSTALL_PROGRAM=${INSTALL}
INSTALL_SCRIPT= ${INSTALL}
INSTALL_DATA=	${INSTALL} -m 644
# Shared libraries must be installed with executable mode on some systems;
# rather than figuring out exactly which, we always give them executable mode.
# Also, making them read-only seems to be a good idea...
INSTALL_SHARED= ${INSTALL} -m 555

MKDIR_P=	./install-sh -c -d

MAKESETUP=      $(srcdir)/Modules/makesetup

# Compiler options
OPT=		-DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes
BASECFLAGS=	 -fno-strict-aliasing -OPT:Olimit=0
CFLAGS=		$(BASECFLAGS) -g -O2 $(OPT) $(EXTRA_CFLAGS)
# Both CPPFLAGS and LDFLAGS need to contain the shell's value for setup.py to
# be able to build extension modules using the directories specified in the
# environment variables
CPPFLAGS=	-I. -IInclude -I$(srcdir)/Include 
LDFLAGS=	
LDLAST=		
SGI_ABI=	
CCSHARED=	
LINKFORSHARED=	
ARFLAGS=	rc
# Extra C flags added for building the interpreter object files.
CFLAGSFORSHARED=
# C flags used for building the interpreter object files
PY_CFLAGS=	$(CFLAGS) $(CPPFLAGS) $(CFLAGSFORSHARED) -DPy_BUILD_CORE


# Machine-dependent subdirectories
MACHDEP=	ios

# Multiarch directory (may be empty)
MULTIARCH=	

# Install prefix for architecture-independent files
prefix=		/Users/rkm/projects/beeware/Python-Apple-support/2.7/build/iOS/Python-2.7.12-iphonesimulator.x86_64/dist

# Install prefix for architecture-dependent files
exec_prefix=	${prefix}

# Install prefix for data files
datarootdir=    ${prefix}/share

# Expanded directories
BINDIR=		${exec_prefix}/bin
LIBDIR=		${exec_prefix}/lib
MANDIR=		${datarootdir}/man
INCLUDEDIR=	${prefix}/include
CONFINCLUDEDIR=	$(exec_prefix)/include
SCRIPTDIR=	$(prefix)/lib

# Detailed destination directories
BINLIBDEST=	$(LIBDIR)/python$(VERSION)
LIBDEST=	$(SCRIPTDIR)/python$(VERSION)
INCLUDEPY=	$(INCLUDEDIR)/python$(VERSION)
CONFINCLUDEPY=	$(CONFINCLUDEDIR)/python$(VERSION)
LIBP=		$(LIBDIR)/python$(VERSION)

# Symbols used for using shared libraries
SO=		.so
LDSHARED=	ld $(LDFLAGS)
BLDSHARED=	ld $(LDFLAGS)
LDCXXSHARED=	ld
DESTSHARED=	$(BINLIBDEST)/lib-dynload

# Executable suffix (.exe on Windows and Mac OS X)
EXE=		
BUILDEXE=	.exe

# Short name and location for Mac OS X Python framework
UNIVERSALSDK=
PYTHONFRAMEWORK=	
PYTHONFRAMEWORKDIR=	no-framework
PYTHONFRAMEWORKPREFIX=	
PYTHONFRAMEWORKINSTALLDIR= 
# Deployment target selected during configure, to be checked
# by distutils. The export statement is needed to ensure that the
# deployment target is active during build.
MACOSX_DEPLOYMENT_TARGET=
#export MACOSX_DEPLOYMENT_TARGET

# Options to enable prebinding (for fast startup prior to Mac OS X 10.3)
OTHER_LIBTOOL_OPT=

# Environment to run shared python without installed libraries
RUNSHARED=       

# ensurepip options
ENSUREPIP=      no

# Modes for directories, executables and data files created by the
# install process.  Default to user-only-writable for all file types.
DIRMODE=	755
EXEMODE=	755
FILEMODE=	644

# configure script arguments
CONFIG_ARGS=	 'CC=xcrun --sdk iphonesimulator clang -arch x86_64 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator9.3.sdk -miphoneos-version-min=7.0 ' 'LD=xcrun --sdk iphonesimulator clang -arch x86_64 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator9.3.sdk -miphoneos-version-min=7.0 ' '--host=x86_64-apple-ios' '--build=x86_64-apple-darwin15.5.0' '--prefix=/Users/rkm/projects/beeware/Python-Apple-support/2.7/build/iOS/Python-2.7.12-iphonesimulator.x86_64/dist' '--without-pymalloc' '--without-doc-strings' '--disable-ipv6' '--without-ensurepip' 'ac_cv_file__dev_ptmx=no' 'ac_cv_file__dev_ptc=no' 'build_alias=x86_64-apple-darwin15.5.0' 'host_alias=x86_64-apple-ios'


# Subdirectories with code
SRCDIRS= 	Parser Grammar Objects Python Modules Mac

# Other subdirectories
SUBDIRSTOO=	Include Lib Misc Demo

# Files and directories to be distributed
CONFIGFILES=	configure configure.ac acconfig.h pyconfig.h.in Makefile.pre.in
DISTFILES=	README ChangeLog $(CONFIGFILES)
DISTDIRS=	$(SUBDIRS) $(SUBDIRSTOO) Ext-dummy
DIST=		$(DISTFILES) $(DISTDIRS)


LIBRARY=	libpython$(VERSION).a
LDLIBRARY=      libpython$(VERSION).a
BLDLIBRARY=     $(LDLIBRARY)
DLLLIBRARY=	
LDLIBRARYDIR=   
INSTSONAME=	$(LDLIBRARY)


LIBS=		-ldl 
LIBM=		-lm
LIBC=		
SYSLIBS=	$(LIBM) $(LIBC)
SHLIBS=		$(LIBS)

THREADOBJ=	Python/thread.o
DLINCLDIR=	.
DYNLOADFILE=	dynload_shlib.o
MACHDEP_OBJS=	
LIBOBJDIR=	Python/
LIBOBJS=	
UNICODE_OBJS=   Objects/unicodeobject.o Objects/unicodectype.o

PYTHON=		python$(EXE)
BUILDPYTHON=	python$(BUILDEXE)

cross_compiling=yes
PYTHON_FOR_BUILD=_PYTHON_PROJECT_BASE=$(abs_builddir) _PYTHON_HOST_PLATFORM=$(_PYTHON_HOST_PLATFORM) PYTHONPATH=$(shell test -f pybuilddir.txt && echo $(abs_builddir)/`cat pybuilddir.txt`:)$(srcdir)/Lib:$(srcdir)/Lib/$(PLATDIR) python2.7
_PYTHON_HOST_PLATFORM=ios-x86_64
HOST_GNU_TYPE=  x86_64-apple-ios

# Tcl and Tk config info from --with-tcltk-includes and -libs options
TCLTK_INCLUDES=	
TCLTK_LIBS=	

# The task to run while instrument when building the profile-opt target
# We exclude unittests with -x that take a rediculious amount of time to
# run in the instrumented training build or do not provide much value.
PROFILE_TASK=-m test.regrtest --pgo -x test_asyncore test_gdb test_multiprocessing test_subprocess

# report files for gcov / lcov coverage report
COVERAGE_INFO=	$(abs_builddir)/coverage.info
COVERAGE_REPORT=$(abs_builddir)/lcov-report
COVERAGE_REPORT_OPTIONS=--no-branch-coverage --title "CPython lcov report"

# === Definitions added by makesetup ===

LOCALMODLIBS=                                   -lsqlite3  -framework OpenSSL -F$(srcdir)/.. -DUSE_SSL        -framework BZip2 -F$(srcdir)/..                 $(WHICH_PURE_PRODUCTS) $(PURE_INCLS) $(PURE_STUBLIBS)             -lz            
BASEMODLIBS=
GLHACK=-Dclear=__GLclear
PYTHONPATH=$(COREPYTHONPATH)
COREPYTHONPATH=$(DESTPATH)$(SITEPATH)$(TESTPATH)$(MACHDEPPATH)$(EXTRAMACHDEPPATH)$(TKPATH)$(OLDPATH)
OLDPATH=:lib-old
TKPATH=:lib-tk
EXTRAMACHDEPPATH=
MACHDEPPATH=:$(PLATDIR)
TESTPATH=
SITEPATH=
DESTPATH=
MACHDESTLIB=$(BINLIBDEST)
DESTLIB=$(LIBDEST)


##########################################################################
# Modules
MODULE_OBJS=	\
		Modules/config.o \
		Modules/getpath.o \
		Modules/main.o \
		Modules/gcmodule.o

# Used of signalmodule.o is not available
SIGNAL_OBJS=	


##########################################################################
# Grammar
GRAMMAR_H=	Include/graminit.h
GRAMMAR_C=	Python/graminit.c
GRAMMAR_INPUT=	$(srcdir)/Grammar/Grammar


LIBFFI_INCLUDEDIR=	

##########################################################################
# Parser
PGEN=		Parser/pgen$(EXE)

PSRCS=		\
		Parser/acceler.c \
		Parser/grammar1.c \
		Parser/listnode.c \
		Parser/node.c \
		Parser/parser.c \
		Parser/parsetok.c \
		Parser/bitset.c \
		Parser/metagrammar.c \
		Parser/firstsets.c \
		Parser/grammar.c \
		Parser/pgen.c

POBJS=		\
		Parser/acceler.o \
		Parser/grammar1.o \
		Parser/listnode.o \
		Parser/node.o \
		Parser/parser.o \
		Parser/parsetok.o \
		Parser/bitset.o \
		Parser/metagrammar.o \
		Parser/firstsets.o \
		Parser/grammar.o \
		Parser/pgen.o

PARSER_OBJS=	$(POBJS) Parser/myreadline.o Parser/tokenizer.o

PGSRCS=		\
		Objects/obmalloc.c \
		Python/mysnprintf.c \
		Python/pyctype.c \
		Parser/tokenizer_pgen.c \
		Parser/printgrammar.c \
		Parser/pgenmain.c

PGOBJS=		\
		Objects/obmalloc.o \
		Python/mysnprintf.o \
		Python/pyctype.o \
		Parser/tokenizer_pgen.o \
		Parser/printgrammar.o \
		Parser/pgenmain.o

PARSER_HEADERS= \
		Parser/parser.h \
		Parser/tokenizer.h

PGENSRCS=	$(PSRCS) $(PGSRCS)
PGENOBJS=	$(POBJS) $(PGOBJS)

##########################################################################
# AST
AST_H_DIR=	Include
AST_H=		$(AST_H_DIR)/Python-ast.h
AST_C_DIR=	Python
AST_C=		$(AST_C_DIR)/Python-ast.c
AST_ASDL=	$(srcdir)/Parser/Python.asdl

ASDLGEN_FILES=	$(srcdir)/Parser/asdl.py $(srcdir)/Parser/asdl_c.py
# XXX Note that a build now requires Python exist before the build starts
ASDLGEN=	$(srcdir)/Parser/asdl_c.py

##########################################################################
# Python

OPCODETARGETS_H= \
		$(srcdir)/Python/opcode_targets.h
		
OPCODETARGETGEN= \
		$(srcdir)/Python/makeopcodetargets.py

OPCODETARGETGEN_FILES= \
		$(OPCODETARGETGEN) $(srcdir)/Lib/opcode.py

PYTHON_OBJS=	\
		Python/_warnings.o \
		Python/Python-ast.o \
		Python/asdl.o \
		Python/ast.o \
		Python/bltinmodule.o \
		Python/ceval.o \
		Python/compile.o \
		Python/codecs.o \
		Python/errors.o \
		Python/frozen.o \
		Python/frozenmain.o \
		Python/future.o \
		Python/getargs.o \
		Python/getcompiler.o \
		Python/getcopyright.o \
		Python/getplatform.o \
		Python/getversion.o \
		Python/graminit.o \
		Python/import.o \
		Python/importdl.o \
		Python/marshal.o \
		Python/modsupport.o \
		Python/mystrtoul.o \
		Python/mysnprintf.o \
		Python/peephole.o \
		Python/pyarena.o \
		Python/pyctype.o \
		Python/pyfpe.o \
		Python/pymath.o \
		Python/pystate.o \
		Python/pythonrun.o \
                Python/random.o \
		Python/structmember.o \
		Python/symtable.o \
		Python/sysmodule.o \
		Python/traceback.o \
		Python/getopt.o \
		Python/pystrcmp.o \
		Python/pystrtod.o \
		Python/dtoa.o \
		Python/formatter_unicode.o \
		Python/formatter_string.o \
		Python/$(DYNLOADFILE) \
		$(LIBOBJS) \
		$(MACHDEP_OBJS) \
		$(THREADOBJ)


##########################################################################
# Objects
OBJECT_OBJS=	\
		Objects/abstract.o \
		Objects/boolobject.o \
		Objects/bufferobject.o \
		Objects/bytes_methods.o \
		Objects/bytearrayobject.o \
		Objects/capsule.o \
		Objects/cellobject.o \
		Objects/classobject.o \
		Objects/cobject.o \
		Objects/codeobject.o \
		Objects/complexobject.o \
		Objects/descrobject.o \
		Objects/enumobject.o \
		Objects/exceptions.o \
		Objects/genobject.o \
		Objects/fileobject.o \
		Objects/floatobject.o \
		Objects/frameobject.o \
		Objects/funcobject.o \
		Objects/intobject.o \
		Objects/iterobject.o \
		Objects/listobject.o \
		Objects/longobject.o \
		Objects/dictobject.o \
		Objects/memoryobject.o \
		Objects/methodobject.o \
		Objects/moduleobject.o \
		Objects/object.o \
		Objects/obmalloc.o \
		Objects/rangeobject.o \
		Objects/setobject.o \
		Objects/sliceobject.o \
		Objects/stringobject.o \
		Objects/structseq.o \
		Objects/tupleobject.o \
		Objects/typeobject.o \
		Objects/weakrefobject.o \
		$(UNICODE_OBJS)


##########################################################################
# objects that get linked into the Python library
LIBRARY_OBJS=	\
		Modules/getbuildinfo.o \
		$(PARSER_OBJS) \
		$(OBJECT_OBJS) \
		$(PYTHON_OBJS) \
		$(MODULE_OBJS) \
		$(SIGNAL_OBJS) \
		$(MODOBJS)

#########################################################################
# Rules

# Default target
all:		build_all
build_all:	$(BUILDPYTHON) oldsharedmods sharedmods gdbhooks

# Compile a binary with profile guided optimization.
profile-opt:
	@if [ $(LLVM_PROF_ERR) = yes ]; then \
		echo "Error: Cannot perform PGO build because llvm-profdata was not found in PATH" ;\
		echo "Please add it to PATH and run ./configure again" ;\
		exit 1;\
	fi
	@echo "Building with support for profile generation:"
	$(MAKE) clean
	$(MAKE) profile-removal
	$(MAKE) build_all_generate_profile
	$(MAKE) profile-removal
	@echo "Running code to generate profile data (this can take a while):"
	$(MAKE) run_profile_task
	$(MAKE) build_all_merge_profile
	@echo "Rebuilding with profile guided optimizations:"
	$(MAKE) clean
	$(MAKE) build_all_use_profile
	$(MAKE) profile-removal

build_all_generate_profile:
	$(MAKE) all CFLAGS="$(CFLAGS) $(PGO_PROF_GEN_FLAG) " LDFLAGS="$(LDFLAGS) $(PGO_PROF_GEN_FLAG) " LIBS="$(LIBS)"

run_profile_task:
	: # FIXME: can't run for a cross build
	$(LLVM_PROF_FILE) ./$(BUILDPYTHON) $(PROFILE_TASK) || true

build_all_merge_profile:
	$(LLVM_PROF_MERGER)

build_all_use_profile:
	$(MAKE) all CFLAGS="$(CFLAGS) $(PGO_PROF_USE_FLAG) " LDFLAGS="$(LDFLAGS) "

# Compile and run with gcov
.PHONY=coverage coverage-lcov coverage-report
coverage:
	@echo "Building with support for coverage checking:"
	$(MAKE) clean profile-removal
	$(MAKE) all CFLAGS="$(CFLAGS) -O0 -pg -fprofile-arcs -ftest-coverage" LIBS="$(LIBS) -lgcov"

coverage-lcov:
	@echo "Creating Coverage HTML report with LCOV:"
	@rm -f $(COVERAGE_INFO)
	@rm -rf $(COVERAGE_REPORT)
	@lcov --capture --directory $(abs_builddir) \
	    --base-directory $(realpath $(abs_builddir)) \
	    --path $(realpath $(abs_srcdir)) \
	    --output-file $(COVERAGE_INFO)
	: # remove 3rd party modules and system headers
	@lcov --remove $(COVERAGE_INFO) \
	    '*/Modules/_ctypes/libffi*/*' \
	    '*/Modules/expat/*' \
	    '*/Modules/zlib/*' \
	    '*/Include/*' \
	    '/usr/include/*' \
	    '/usr/local/include/*' \
	    --output-file $(COVERAGE_INFO)
	@genhtml $(COVERAGE_INFO) --output-directory $(COVERAGE_REPORT) \
	    $(COVERAGE_REPORT_OPTIONS)
	@echo
	@echo "lcov report at $(COVERAGE_REPORT)/index.html"
	@echo

coverage-report:
	: # force rebuilding of parser
	@touch $(GRAMMAR_INPUT)
	: # build with coverage info
	$(MAKE) coverage
	: # run tests, ignore failures
	$(TESTPYTHON) $(TESTPROG) $(TESTOPTS) || true
	: # build lcov report
	$(MAKE) coverage-lcov


# Build the interpreter
$(BUILDPYTHON):	Modules/python.o $(LIBRARY) $(LDLIBRARY)
		$(LINKCC) $(LDFLAGS) $(LINKFORSHARED) -o $@ \
			Modules/python.o \
			$(BLDLIBRARY) $(LIBS) $(MODLIBS) $(SYSLIBS) $(LDLAST)

platform: $(BUILDPYTHON) pybuilddir.txt
	$(RUNSHARED) $(PYTHON_FOR_BUILD) -c 'import sys ; from sysconfig import get_platform ; print get_platform()+"-"+sys.version[0:3]' >platform

# Create build directory and generate the sysconfig build-time data there.
# pybuilddir.txt contains the name of the build dir and is used for
# sys.path fixup -- see Modules/getpath.c.
# Since this step runs before shared modules are built, try to avoid bootstrap
# problems by creating a dummy pybuilddir.txt just to allow interpreter
# initialization to succeed.  It will be overwritten by generate-posix-vars
# or removed in case of failure.
pybuilddir.txt: $(BUILDPYTHON)
	@echo "none" > ./pybuilddir.txt
	$(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig --generate-posix-vars ;\
	if test $$? -ne 0 ; then \
		echo "generate-posix-vars failed" ; \
		rm -f ./pybuilddir.txt ; \
		exit 1 ; \
	fi

# This is shared by the math and cmath modules
Modules/_math.o: Modules/_math.c Modules/_math.h
	$(CC) -c $(CCSHARED) $(PY_CFLAGS) -o $@ $<

# Build the shared modules
# Under GNU make, MAKEFLAGS are sorted and normalized; the 's' for
# -s, --silent or --quiet is always the first char.
# Under BSD make, MAKEFLAGS might be " -s -v x=y".
sharedmods: $(BUILDPYTHON) pybuilddir.txt Modules/_math.o
	@case "$$MAKEFLAGS" in \
	    *\ -s*|s*) quiet="-q";; \
	    *) quiet="";; \
	esac; \
	$(RUNSHARED) CC='$(CC)' LDSHARED='$(BLDSHARED)' OPT='$(OPT)' \
		_TCLTK_INCLUDES='$(TCLTK_INCLUDES)' _TCLTK_LIBS='$(TCLTK_LIBS)' \
		$(PYTHON_FOR_BUILD) $(srcdir)/setup.py $$quiet build

# Build static library
# avoid long command lines, same as LIBRARY_OBJS
$(LIBRARY): $(LIBRARY_OBJS)
	-rm -f $@
	$(AR) $(ARFLAGS) $@ Modules/getbuildinfo.o
	$(AR) $(ARFLAGS) $@ $(PARSER_OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJECT_OBJS)
	$(AR) $(ARFLAGS) $@ $(PYTHON_OBJS)
	$(AR) $(ARFLAGS) $@ $(MODULE_OBJS) $(SIGNAL_OBJS)
	$(AR) $(ARFLAGS) $@ $(MODOBJS)
	$(RANLIB) $@

libpython$(VERSION).so: $(LIBRARY_OBJS)
	if test $(INSTSONAME) != $(LDLIBRARY); then \
		$(BLDSHARED) -Wl,-h$(INSTSONAME) -o $(INSTSONAME) $(LIBRARY_OBJS) $(MODLIBS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST); \
		$(LN) -f $(INSTSONAME) $@; \
	else \
		$(BLDSHARED) -o $@ $(LIBRARY_OBJS) $(MODLIBS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST); \
	fi

libpython$(VERSION).dylib: $(LIBRARY_OBJS)
	 $(CC) -dynamiclib -Wl,-single_module $(LDFLAGS) -undefined dynamic_lookup -Wl,-install_name,$(prefix)/lib/libpython$(VERSION).dylib -Wl,-compatibility_version,$(VERSION) -Wl,-current_version,$(VERSION) -o $@ $(LIBRARY_OBJS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST); \


libpython$(VERSION).sl: $(LIBRARY_OBJS)
	$(LDSHARED) -o $@ $(LIBRARY_OBJS) $(MODLIBS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST)

# Copy up the gdb python hooks into a position where they can be automatically
# loaded by gdb during Lib/test/test_gdb.py
#
# Distributors are likely to want to install this somewhere else e.g. relative
# to the stripped DWARF data for the shared library.
gdbhooks: $(BUILDPYTHON)-gdb.py

SRC_GDB_HOOKS=$(srcdir)/Tools/gdb/libpython.py
$(BUILDPYTHON)-gdb.py: $(SRC_GDB_HOOKS)
	$(INSTALL_DATA) $(SRC_GDB_HOOKS) $(BUILDPYTHON)-gdb.py

# This rule is here for OPENSTEP/Rhapsody/MacOSX. It builds a temporary
# minimal framework (not including the Lib directory and such) in the current
# directory.
RESSRCDIR=Mac/Resources/framework
$(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)/$(PYTHONFRAMEWORK): \
		$(LIBRARY) \
		$(RESSRCDIR)/Info.plist
	$(INSTALL) -d -m $(DIRMODE) $(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)
	$(CC) -o $(LDLIBRARY) $(LDFLAGS)  -dynamiclib \
		-all_load $(LIBRARY) -Wl,-single_module \
		-install_name $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Versions/$(VERSION)/$(PYTHONFRAMEWORK) \
		-compatibility_version $(VERSION) \
		-current_version $(VERSION);
	$(INSTALL) -d -m $(DIRMODE)  \
		$(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)/Resources/English.lproj
	$(INSTALL_DATA) $(RESSRCDIR)/Info.plist \
		$(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)/Resources/Info.plist
	$(LN) -fsn $(VERSION) $(PYTHONFRAMEWORKDIR)/Versions/Current
	$(LN) -fsn Versions/Current/$(PYTHONFRAMEWORK) $(PYTHONFRAMEWORKDIR)/$(PYTHONFRAMEWORK)
	$(LN) -fsn Versions/Current/Headers $(PYTHONFRAMEWORKDIR)/Headers
	$(LN) -fsn Versions/Current/Resources $(PYTHONFRAMEWORKDIR)/Resources

# This rule builds the Cygwin Python DLL and import library if configured
# for a shared core library; otherwise, this rule is a noop.
$(DLLLIBRARY) libpython$(VERSION).dll.a: $(LIBRARY_OBJS)
	if test -n "$(DLLLIBRARY)"; then \
		$(LDSHARED) -Wl,--out-implib=$@ -o $(DLLLIBRARY) $^ \
			$(LIBS) $(MODLIBS) $(SYSLIBS) $(LDLAST); \
	else true; \
	fi


oldsharedmods: $(SHAREDMODS)


Makefile Modules/config.c: Makefile.pre \
				$(srcdir)/Modules/config.c.in \
				$(MAKESETUP) \
				Modules/Setup.config \
				Modules/Setup \
				Modules/Setup.local
	$(SHELL) $(MAKESETUP) -c $(srcdir)/Modules/config.c.in \
				-s Modules \
				Modules/Setup.config \
				Modules/Setup.local \
				Modules/Setup
	@mv config.c Modules
	@echo "The Makefile was updated, you may need to re-run make."


Modules/Setup: $(srcdir)/Modules/Setup.dist
	@if test -f Modules/Setup; then \
		echo "-----------------------------------------------"; \
		echo "Modules/Setup.dist is newer than Modules/Setup;"; \
		echo "check to make sure you have all the updates you"; \
		echo "need in your Modules/Setup file."; \
		echo "Usually, copying Modules/Setup.dist to Modules/Setup will work."; \
		echo "-----------------------------------------------"; \
	fi

############################################################################
# Special rules for object files

Modules/getbuildinfo.o: $(PARSER_OBJS) \
		$(OBJECT_OBJS) \
		$(PYTHON_OBJS) \
		$(MODULE_OBJS) \
		$(SIGNAL_OBJS) \
		$(MODOBJS) \
		$(srcdir)/Modules/getbuildinfo.c
	$(CC) -c $(PY_CFLAGS) \
	      -DSVNVERSION="\"`LC_ALL=C $(SVNVERSION)`\"" \
	      -DHGVERSION="\"`LC_ALL=C $(HGVERSION)`\"" \
	      -DHGTAG="\"`LC_ALL=C $(HGTAG)`\"" \
	      -DHGBRANCH="\"`LC_ALL=C $(HGBRANCH)`\"" \
	      -o $@ $(srcdir)/Modules/getbuildinfo.c

Modules/getpath.o: $(srcdir)/Modules/getpath.c Makefile
	$(CC) -c $(PY_CFLAGS) -DPYTHONPATH='"$(PYTHONPATH)"' \
		-DPREFIX='"$(prefix)"' \
		-DEXEC_PREFIX='"$(exec_prefix)"' \
		-DVERSION='"$(VERSION)"' \
		-DVPATH='"$(VPATH)"' \
		-o $@ $(srcdir)/Modules/getpath.c

Modules/python.o: $(srcdir)/Modules/python.c
	$(MAINCC) -c $(PY_CFLAGS) -o $@ $(srcdir)/Modules/python.c

Modules/posixmodule.o: $(srcdir)/Modules/posixmodule.c $(srcdir)/Modules/posixmodule.h

Modules/grpmodule.o: $(srcdir)/Modules/grpmodule.c $(srcdir)/Modules/posixmodule.h

Modules/pwdmodule.o: $(srcdir)/Modules/pwdmodule.c $(srcdir)/Modules/posixmodule.h

$(GRAMMAR_H): $(GRAMMAR_INPUT) $(PGEN)
	@$(MKDIR_P) Include
	# Avoid copying the file onto itself for an in-tree build
	if test "$(cross_compiling)" != "yes"; then \
		$(PGEN) $(GRAMMAR_INPUT) $(GRAMMAR_H) $(GRAMMAR_C); \
	else \
		cp $(srcdir)/Include/graminit.h $(GRAMMAR_H).tmp; \
		mv $(GRAMMAR_H).tmp $(GRAMMAR_H); \
	fi
$(GRAMMAR_C): $(GRAMMAR_H)
	if test "$(cross_compiling)" != "yes"; then \
		touch $(GRAMMAR_C); \
	else \
		cp $(srcdir)/Python/graminit.c $(GRAMMAR_C).tmp; \
		mv $(GRAMMAR_C).tmp $(GRAMMAR_C); \
	fi

$(PGEN):	$(PGENOBJS)
		$(CC) $(OPT) $(LDFLAGS) $(PGENOBJS) $(LIBS) -o $(PGEN)

Parser/grammar.o:	$(srcdir)/Parser/grammar.c \
				$(srcdir)/Include/token.h \
				$(srcdir)/Include/grammar.h
Parser/metagrammar.o:	$(srcdir)/Parser/metagrammar.c

Parser/tokenizer_pgen.o:	$(srcdir)/Parser/tokenizer.c

Parser/pgenmain.o:	$(srcdir)/Include/parsetok.h

$(AST_H): $(AST_ASDL) $(ASDLGEN_FILES)
	$(MKDIR_P) $(AST_H_DIR)
	$(ASDLGEN) -h $(AST_H_DIR) $(AST_ASDL)

$(AST_C): $(AST_ASDL) $(ASDLGEN_FILES)
	$(MKDIR_P) $(AST_C_DIR)
	$(ASDLGEN) -c $(AST_C_DIR) $(AST_ASDL)

Python/compile.o Python/symtable.o Python/ast.o: $(GRAMMAR_H) $(AST_H)

Python/getplatform.o: $(srcdir)/Python/getplatform.c
		$(CC) -c $(PY_CFLAGS) -DPLATFORM='"$(MACHDEP)"' -o $@ $(srcdir)/Python/getplatform.c

Python/importdl.o: $(srcdir)/Python/importdl.c
		$(CC) -c $(PY_CFLAGS) -I$(DLINCLDIR) -o $@ $(srcdir)/Python/importdl.c

Objects/unicodectype.o:	$(srcdir)/Objects/unicodectype.c \
				$(srcdir)/Objects/unicodetype_db.h

STRINGLIB_HEADERS= \
		$(srcdir)/Include/bytes_methods.h \
		$(srcdir)/Objects/stringlib/count.h \
		$(srcdir)/Objects/stringlib/ctype.h \
		$(srcdir)/Objects/stringlib/fastsearch.h \
		$(srcdir)/Objects/stringlib/find.h \
		$(srcdir)/Objects/stringlib/formatter.h \
		$(srcdir)/Objects/stringlib/partition.h \
		$(srcdir)/Objects/stringlib/split.h \
		$(srcdir)/Objects/stringlib/stringdefs.h \
		$(srcdir)/Objects/stringlib/string_format.h \
		$(srcdir)/Objects/stringlib/transmogrify.h \
		$(srcdir)/Objects/stringlib/unicodedefs.h \
		$(srcdir)/Objects/stringlib/localeutil.h

Objects/unicodeobject.o: $(srcdir)/Objects/unicodeobject.c \
				$(STRINGLIB_HEADERS)

Objects/bytearrayobject.o: $(srcdir)/Objects/bytearrayobject.c \
				$(STRINGLIB_HEADERS)

Objects/stringobject.o: $(srcdir)/Objects/stringobject.c \
				$(STRINGLIB_HEADERS)

$(OPCODETARGETS_H): $(OPCODETARGETGEN_FILES)
	$(OPCODETARGETGEN) $(OPCODETARGETS_H)

Python/ceval.o: $(OPCODETARGETS_H)

Python/formatter_unicode.o: $(srcdir)/Python/formatter_unicode.c \
				$(STRINGLIB_HEADERS)

Python/formatter_string.o: $(srcdir)/Python/formatter_string.c \
				$(STRINGLIB_HEADERS)

############################################################################
# Header files

PYTHON_HEADERS= \
		Include/Python-ast.h \
		Include/Python.h \
		Include/abstract.h \
		Include/asdl.h \
		Include/ast.h \
		Include/bitset.h \
		Include/boolobject.h \
		Include/bytearrayobject.h \
		Include/bytes_methods.h \
		Include/bytesobject.h \
		Include/bufferobject.h \
		Include/cellobject.h \
		Include/ceval.h \
		Include/classobject.h \
		Include/cobject.h \
		Include/code.h \
		Include/codecs.h \
		Include/compile.h \
		Include/complexobject.h \
		Include/descrobject.h \
		Include/dictobject.h \
		Include/dtoa.h \
		Include/enumobject.h \
		Include/errcode.h \
		Include/eval.h \
		Include/fileobject.h \
		Include/floatobject.h \
		Include/frameobject.h \
		Include/funcobject.h \
		Include/genobject.h \
		Include/import.h \
		Include/intobject.h \
		Include/intrcheck.h \
		Include/iterobject.h \
		Include/listobject.h \
		Include/longintrepr.h \
		Include/longobject.h \
		Include/marshal.h \
		Include/memoryobject.h \
		Include/metagrammar.h \
		Include/methodobject.h \
		Include/modsupport.h \
		Include/moduleobject.h \
		Include/node.h \
		Include/object.h \
		Include/objimpl.h \
		Include/opcode.h \
		Include/osdefs.h \
		Include/parsetok.h \
		Include/patchlevel.h \
		Include/pgen.h \
		Include/pgenheaders.h \
		Include/pyarena.h \
		Include/pycapsule.h \
		Include/pyctype.h \
		Include/pydebug.h \
		Include/pyerrors.h \
		Include/pyfpe.h \
		Include/pymath.h \
		Include/pygetopt.h \
		Include/pymem.h \
		Include/pyport.h \
		Include/pystate.h \
		Include/pystrcmp.h \
		Include/pystrtod.h \
		Include/pythonrun.h \
		Include/pythread.h \
		Include/rangeobject.h \
		Include/setobject.h \
		Include/sliceobject.h \
		Include/stringobject.h \
		Include/structmember.h \
		Include/structseq.h \
		Include/symtable.h \
		Include/sysmodule.h \
		Include/traceback.h \
		Include/tupleobject.h \
		Include/ucnhash.h \
		Include/unicodeobject.h \
		Include/warnings.h \
		Include/weakrefobject.h \
		pyconfig.h \
		$(PARSER_HEADERS) \
		$(AST_H)

$(LIBRARY_OBJS) $(MODOBJS) Modules/python.o: $(PYTHON_HEADERS)


######################################################################

# Test the interpreter (twice, once without .pyc files, once with)
# In the past, we've had problems where bugs in the marshalling or
# elsewhere caused bytecode read from .pyc files to behave differently
# than bytecode generated directly from a .py source file.  Sometimes
# the bytecode read from a .pyc file had the bug, sometimes the directly
# generated bytecode.  This is sometimes a very shy bug needing a lot of
# sample data.

TESTOPTS=	-l $(EXTRATESTOPTS)
TESTPROG=	$(srcdir)/Lib/test/regrtest.py
TESTPYTHON=	$(RUNSHARED) ./$(BUILDPYTHON) -Wd -3 -E -tt $(TESTPYTHONOPTS)
test:		all platform
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) $(TESTOPTS)
		$(TESTPYTHON) $(TESTPROG) $(TESTOPTS)

testall:	all platform
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		$(TESTPYTHON) $(srcdir)/Lib/compileall.py
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)
		$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)

#  Run the unitests for both architectures in a Universal build on OSX
#  Must be run on an Intel box.
testuniversal:	all platform
		if [ `arch` != 'i386' ];then \
			echo "This can only be used on OSX/i386" ;\
			exit 1 ;\
		fi
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)
		$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)
		$(RUNSHARED) /usr/libexec/oah/translate ./$(BUILDPYTHON) -E -tt $(TESTPROG) -uall $(TESTOPTS)


# Like testall, but with a single pass only
# run an optional script to include some information about the build environment
buildbottest:	all platform
		-@if which pybuildbot.identify >/dev/null 2>&1; then \
			pybuildbot.identify "CC='$(CC)'" "CXX='$(CXX)'"; \
		fi
		$(TESTPYTHON) -R $(TESTPROG) -uall -rwW $(TESTOPTS)

QUICKTESTOPTS=	$(TESTOPTS) -x test_subprocess test_io test_lib2to3 \
		test_multibytecodec test_urllib2_localnet test_itertools \
		test_multiprocessing test_mailbox test_socket test_poll \
		test_select test_zipfile
quicktest:	all platform
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) $(QUICKTESTOPTS)
		$(TESTPYTHON) $(TESTPROG) $(QUICKTESTOPTS)

MEMTESTOPTS=    $(QUICKTESTOPTS) -x test_dl test___all__ test_fork1 \
		test_longexp
memtest:	all platform
		-rm -f $(srcdir)/Lib/test/*.py[co]
		-$(TESTPYTHON) $(TESTPROG) $(MEMTESTOPTS)
		$(TESTPYTHON) $(TESTPROG) $(MEMTESTOPTS)

# Install everything
install:	 commoninstall bininstall maninstall 
	if test "x$(ENSUREPIP)" != "xno"  ; then \
		case $(ENSUREPIP) in \
			upgrade) ensurepip="--upgrade" ;; \
			install|*) ensurepip="" ;; \
		esac; \
		$(RUNSHARED) $(PYTHON_FOR_BUILD) -m ensurepip \
			$$ensurepip --root=$(DESTDIR)/ ; \
	fi

# Install almost everything without disturbing previous versions
altinstall:	commoninstall
	if test "x$(ENSUREPIP)" != "xno"  ; then \
		case $(ENSUREPIP) in \
			upgrade) ensurepip="--altinstall --upgrade --no-default-pip" ;; \
			install|*) ensurepip="--altinstall --no-default-pip" ;; \
		esac; \
		$(RUNSHARED) $(PYTHON_FOR_BUILD) -m ensurepip \
			$$ensurepip --root=$(DESTDIR)/ ; \
	fi

commoninstall:	 \
		altbininstall libinstall inclinstall libainstall \
		sharedinstall oldsharedinstall altmaninstall \
		

# Install shared libraries enabled by Setup
DESTDIRS=	$(exec_prefix) $(LIBDIR) $(BINLIBDEST) $(DESTSHARED)

oldsharedinstall: $(DESTSHARED) $(SHAREDMODS)
		@for i in X $(SHAREDMODS); do \
		  if test $$i != X; then \
		    echo $(INSTALL_SHARED) $$i $(DESTSHARED)/`basename $$i`; \
		    $(INSTALL_SHARED) $$i $(DESTDIR)$(DESTSHARED)/`basename $$i`; \
		  fi; \
		done

$(DESTSHARED):
		@for i in $(DESTDIRS); \
		do \
			if test ! -d $(DESTDIR)$$i; then \
				echo "Creating directory $$i"; \
				$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
			else    true; \
			fi; \
		done


# Install the interpreter by creating a symlink chain:
#  $(PYTHON) -> python2 -> python$(VERSION))
# Also create equivalent chains for other installed files
bininstall:	altbininstall
	if test ! -d $(DESTDIR)$(LIBPC); then \
		echo "Creating directory $(LIBPC)"; \
		$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$(LIBPC); \
	fi
	-if test -f $(DESTDIR)$(BINDIR)/$(PYTHON) -o -h $(DESTDIR)$(BINDIR)/$(PYTHON); \
	then rm -f $(DESTDIR)$(BINDIR)/$(PYTHON); \
	else true; \
	fi
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python2$(EXE) $(PYTHON))
	-rm -f $(DESTDIR)$(BINDIR)/python2$(EXE)
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python$(VERSION)$(EXE) python2$(EXE))
	-rm -f $(DESTDIR)$(BINDIR)/python2-config
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python$(VERSION)-config python2-config)
	-rm -f $(DESTDIR)$(BINDIR)/python-config
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python2-config python-config)
	-test -d $(DESTDIR)$(LIBPC) || $(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$(LIBPC)
	-rm -f $(DESTDIR)$(LIBPC)/python2.pc
	(cd $(DESTDIR)$(LIBPC); $(LN) -s python-$(VERSION).pc python2.pc)
	-rm -f $(DESTDIR)$(LIBPC)/python.pc
	(cd $(DESTDIR)$(LIBPC); $(LN) -s python2.pc python.pc)

# Install the interpreter with $(VERSION) affixed
# This goes into $(exec_prefix)
altbininstall:	$(BUILDPYTHON)
	@for i in $(BINDIR) $(LIBDIR); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	$(INSTALL_PROGRAM) $(BUILDPYTHON) $(DESTDIR)$(BINDIR)/python$(VERSION)$(EXE)
	if test -f $(LDLIBRARY); then \
		if test -n "$(DLLLIBRARY)" ; then \
			$(INSTALL_SHARED) $(DLLLIBRARY) $(DESTDIR)$(BINDIR); \
		else \
			$(INSTALL_SHARED) $(LDLIBRARY) $(DESTDIR)$(LIBDIR)/$(INSTSONAME); \
			if test $(LDLIBRARY) != $(INSTSONAME); then \
				(cd $(DESTDIR)$(LIBDIR); $(LN) -sf $(INSTSONAME) $(LDLIBRARY)) \
			fi \
		fi; \
	else	true; \
	fi

# Install the versioned manual page
altmaninstall:
	@for i in $(MANDIR) $(MANDIR)/man1; \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	$(INSTALL_DATA) $(srcdir)/Misc/python.man \
		$(DESTDIR)$(MANDIR)/man1/python$(VERSION).1

# Install the unversioned manual pages
maninstall:	altmaninstall
	-rm -f $(DESTDIR)$(MANDIR)/man1/python2.1
	(cd $(DESTDIR)$(MANDIR)/man1; $(LN) -s python$(VERSION).1 python2.1)
	-rm -f $(DESTDIR)$(MANDIR)/man1/python.1
	(cd $(DESTDIR)$(MANDIR)/man1; $(LN) -s python2.1 python.1)

# Install the library
PLATDIR=	plat-ios
EXTRAPLATDIR= 
EXTRAMACHDEPPATH=
MACHDEPS=	$(PLATDIR) $(EXTRAPLATDIR)
XMLLIBSUBDIRS=  xml xml/dom xml/etree xml/parsers xml/sax
PLATMACDIRS= plat-mac plat-mac/Carbon plat-mac/lib-scriptpackages \
	plat-mac/lib-scriptpackages/_builtinSuites \
	plat-mac/lib-scriptpackages/CodeWarrior \
	plat-mac/lib-scriptpackages/Explorer \
	plat-mac/lib-scriptpackages/Finder \
	plat-mac/lib-scriptpackages/Netscape \
	plat-mac/lib-scriptpackages/StdSuites \
	plat-mac/lib-scriptpackages/SystemEvents \
	plat-mac/lib-scriptpackages/Terminal
PLATMACPATH=:plat-mac:plat-mac/lib-scriptpackages
LIBSUBDIRS=	lib-tk lib-tk/test lib-tk/test/test_tkinter \
		lib-tk/test/test_ttk site-packages test test/audiodata test/capath \
		test/data test/cjkencodings test/decimaltestdata test/xmltestdata \
		test/imghdrdata \
		test/subprocessdata \
		test/tracedmodules \
		encodings compiler hotshot \
		email email/mime email/test email/test/data \
		ensurepip ensurepip/_bundled \
		json json/tests \
		sqlite3 sqlite3/test \
		logging bsddb bsddb/test csv importlib wsgiref \
		lib2to3 lib2to3/fixes lib2to3/pgen2 lib2to3/tests \
		lib2to3/tests/data lib2to3/tests/data/fixers lib2to3/tests/data/fixers/myfixes \
		ctypes ctypes/test ctypes/macholib \
		idlelib idlelib/Icons idlelib/idle_test \
		distutils distutils/command distutils/tests $(XMLLIBSUBDIRS) \
		multiprocessing multiprocessing/dummy \
		unittest unittest/test \
		lib-old \
		curses pydoc_data $(MACHDEPS)
libinstall:	build_all $(srcdir)/Lib/$(PLATDIR) $(srcdir)/Modules/xxmodule.c
	@for i in $(SCRIPTDIR) $(LIBDEST); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	@for d in $(LIBSUBDIRS); \
	do \
		a=$(srcdir)/Lib/$$d; \
		if test ! -d $$a; then continue; else true; fi; \
		b=$(LIBDEST)/$$d; \
		if test ! -d $(DESTDIR)$$b; then \
			echo "Creating directory $$b"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$b; \
		else	true; \
		fi; \
	done
	@for i in $(srcdir)/Lib/*.py `cat pybuilddir.txt`/_sysconfigdata.py $(srcdir)/Lib/*.doc $(srcdir)/Lib/*.egg-info ; \
	do \
		if test -x $$i; then \
			$(INSTALL_SCRIPT) $$i $(DESTDIR)$(LIBDEST); \
			echo $(INSTALL_SCRIPT) $$i $(LIBDEST); \
		else \
			$(INSTALL_DATA) $$i $(DESTDIR)$(LIBDEST); \
			echo $(INSTALL_DATA) $$i $(LIBDEST); \
		fi; \
	done
	@for d in $(LIBSUBDIRS); \
	do \
		a=$(srcdir)/Lib/$$d; \
		if test ! -d $$a; then continue; else true; fi; \
		if test `ls $$a | wc -l` -lt 1; then continue; fi; \
		b=$(LIBDEST)/$$d; \
		for i in $$a/*; \
		do \
			case $$i in \
			*CVS) ;; \
			*.py[co]) ;; \
			*.orig) ;; \
			*~) ;; \
			*) \
				if test -d $$i; then continue; fi; \
				if test -x $$i; then \
				    echo $(INSTALL_SCRIPT) $$i $$b; \
				    $(INSTALL_SCRIPT) $$i $(DESTDIR)$$b; \
				else \
				    echo $(INSTALL_DATA) $$i $$b; \
				    $(INSTALL_DATA) $$i $(DESTDIR)$$b; \
				fi;; \
			esac; \
		done; \
	done
	$(INSTALL_DATA) $(srcdir)/LICENSE $(DESTDIR)$(LIBDEST)/LICENSE.txt
	if test -d $(DESTDIR)$(LIBDEST)/distutils/tests; then \
		$(INSTALL_DATA) $(srcdir)/Modules/xxmodule.c \
			$(DESTDIR)$(LIBDEST)/distutils/tests ; \
	fi
	PYTHONPATH=$(DESTDIR)$(LIBDEST)  $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -tt $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST) -f \
		-x 'bad_coding|badsyntax|site-packages|lib2to3/tests/data' \
		$(DESTDIR)$(LIBDEST)
	PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -tt -O $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST) -f \
		-x 'bad_coding|badsyntax|site-packages|lib2to3/tests/data' \
		$(DESTDIR)$(LIBDEST)
	-PYTHONPATH=$(DESTDIR)$(LIBDEST)  $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -t $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST)/site-packages -f \
		-x badsyntax $(DESTDIR)$(LIBDEST)/site-packages
	-PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -t -O $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST)/site-packages -f \
		-x badsyntax $(DESTDIR)$(LIBDEST)/site-packages
	-PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -m lib2to3.pgen2.driver $(DESTDIR)$(LIBDEST)/lib2to3/Grammar.txt
	-PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -m lib2to3.pgen2.driver $(DESTDIR)$(LIBDEST)/lib2to3/PatternGrammar.txt

# Create the PLATDIR source directory, if one wasn't distributed..
$(srcdir)/Lib/$(PLATDIR):
	mkdir $(srcdir)/Lib/$(PLATDIR)
	cp $(srcdir)/Lib/plat-generic/regen $(srcdir)/Lib/$(PLATDIR)/regen
	export PATH; PATH="`pwd`:$$PATH"; \
	export PYTHONPATH; PYTHONPATH="$(srcdir)/Lib:$(abs_builddir)/`cat pybuilddir.txt`"; \
	export DYLD_FRAMEWORK_PATH; DYLD_FRAMEWORK_PATH="`pwd`"; \
	export EXE; EXE="$(BUILDEXE)"; \
	if [ -n "$(MULTIARCH)" ]; then export MULTIARCH; MULTIARCH=$(MULTIARCH); fi; \
	export PYTHON_FOR_BUILD; \
	if [ "$(build)" = "$(host)" ]; then \
	  PYTHON_FOR_BUILD="$(BUILDPYTHON)"; \
	else \
	  PYTHON_FOR_BUILD="$(PYTHON_FOR_BUILD)"; \
	fi; \
	cd $(srcdir)/Lib/$(PLATDIR); $(RUNSHARED) ./regen

python-config: $(srcdir)/Misc/python-config.in
	# Substitution happens here, as the completely-expanded BINDIR
	# is not available in configure
	sed -e "s,@EXENAME@,$(BINDIR)/python$(VERSION)$(EXE)," < $(srcdir)/Misc/python-config.in >python-config

# Install the include files
INCLDIRSTOMAKE=$(INCLUDEDIR) $(CONFINCLUDEDIR) $(INCLUDEPY) $(CONFINCLUDEPY)
inclinstall:
	@for i in $(INCLDIRSTOMAKE); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	@for i in $(srcdir)/Include/*.h; \
	do \
		echo $(INSTALL_DATA) $$i $(INCLUDEPY); \
		$(INSTALL_DATA) $$i $(DESTDIR)$(INCLUDEPY); \
	done
	$(INSTALL_DATA) pyconfig.h $(DESTDIR)$(CONFINCLUDEPY)/pyconfig.h

# Install the library and miscellaneous stuff needed for extending/embedding
# This goes into $(exec_prefix)
LIBPL=		$(LIBP)/config

# pkgconfig directory
LIBPC=		$(LIBDIR)/pkgconfig

libainstall:	all python-config
	@for i in $(LIBDIR) $(LIBP) $(LIBPL) $(LIBPC); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	@if test -d $(LIBRARY); then :; else \
		if test "$(PYTHONFRAMEWORKDIR)" = no-framework; then \
			if test "$(SO)" = .dll; then \
				$(INSTALL_DATA) $(LDLIBRARY) $(DESTDIR)$(LIBPL) ; \
			else \
				$(INSTALL_DATA) $(LIBRARY) $(DESTDIR)$(LIBPL)/$(LIBRARY) ; \
				$(RANLIB) $(DESTDIR)$(LIBPL)/$(LIBRARY) ; \
			fi; \
		else \
			echo Skip install of $(LIBRARY) - use make frameworkinstall; \
		fi; \
	fi
	$(INSTALL_DATA) Modules/config.c $(DESTDIR)$(LIBPL)/config.c
	$(INSTALL_DATA) Modules/python.o $(DESTDIR)$(LIBPL)/python.o
	$(INSTALL_DATA) $(srcdir)/Modules/config.c.in $(DESTDIR)$(LIBPL)/config.c.in
	$(INSTALL_DATA) Makefile $(DESTDIR)$(LIBPL)/Makefile
	$(INSTALL_DATA) Modules/Setup $(DESTDIR)$(LIBPL)/Setup
	$(INSTALL_DATA) Modules/Setup.local $(DESTDIR)$(LIBPL)/Setup.local
	$(INSTALL_DATA) Modules/Setup.config $(DESTDIR)$(LIBPL)/Setup.config
	$(INSTALL_DATA) Misc/python.pc $(DESTDIR)$(LIBPC)/python-$(VERSION).pc
	$(INSTALL_SCRIPT) $(srcdir)/Modules/makesetup $(DESTDIR)$(LIBPL)/makesetup
	$(INSTALL_SCRIPT) $(srcdir)/install-sh $(DESTDIR)$(LIBPL)/install-sh
	$(INSTALL_SCRIPT) python-config $(DESTDIR)$(BINDIR)/python$(VERSION)-config
	rm python-config
	@if [ -s Modules/python.exp -a \
		"`echo $(MACHDEP) | sed 's/^\(...\).*/\1/'`" = "aix" ]; then \
		echo; echo "Installing support files for building shared extension modules on AIX:"; \
		$(INSTALL_DATA) Modules/python.exp		\
				$(DESTDIR)$(LIBPL)/python.exp;		\
		echo; echo "$(LIBPL)/python.exp";		\
		$(INSTALL_SCRIPT) $(srcdir)/Modules/makexp_aix	\
				$(DESTDIR)$(LIBPL)/makexp_aix;		\
		echo "$(LIBPL)/makexp_aix";			\
		$(INSTALL_SCRIPT) $(srcdir)/Modules/ld_so_aix	\
				$(DESTDIR)$(LIBPL)/ld_so_aix;		\
		echo "$(LIBPL)/ld_so_aix";			\
		echo; echo "See Misc/AIX-NOTES for details.";	\
	else true; \
	fi
	@case "$(MACHDEP)" in beos*) \
		echo; echo "Installing support files for building shared extension modules on BeOS:"; \
		$(INSTALL_DATA) Misc/BeOS-NOTES $(DESTDIR)$(LIBPL)/README;	\
		echo; echo "$(LIBPL)/README";			\
		$(INSTALL_SCRIPT) Modules/ar_beos $(DESTDIR)$(LIBPL)/ar_beos; \
		echo "$(LIBPL)/ar_beos";			\
		$(INSTALL_SCRIPT) Modules/ld_so_beos $(DESTDIR)$(LIBPL)/ld_so_beos; \
		echo "$(LIBPL)/ld_so_beos";			\
		echo; echo "See Misc/BeOS-NOTES for details.";	\
		;; \
	esac

# Install the dynamically loadable modules
# This goes into $(exec_prefix)
sharedinstall: sharedmods
	$(RUNSHARED) $(PYTHON_FOR_BUILD) $(srcdir)/setup.py install \
	   	--prefix=$(prefix) \
		--install-scripts=$(BINDIR) \
		--install-platlib=$(DESTSHARED) \
		--root=$(DESTDIR)/
	-rm $(DESTDIR)$(DESTSHARED)/_sysconfigdata.py*

# Here are a couple of targets for MacOSX again, to install a full
# framework-based Python. frameworkinstall installs everything, the
# subtargets install specific parts. Much of the actual work is offloaded to
# the Makefile in Mac
#
#
# This target is here for backward compatibility, previous versions of Python
# hadn't integrated framework installation in the normal install process.
frameworkinstall: install

# On install, we re-make the framework
# structure in the install location, /Library/Frameworks/ or the argument to
# --enable-framework. If --enable-framework has been specified then we have
# automatically set prefix to the location deep down in the framework, so we
# only have to cater for the structural bits of the framework.

frameworkinstallframework: frameworkinstallstructure install frameworkinstallmaclib

frameworkinstallstructure:	$(LDLIBRARY)
	@if test "$(PYTHONFRAMEWORKDIR)" = no-framework; then \
		echo Not configured with --enable-framework; \
		exit 1; \
	else true; \
	fi
	@for i in $(prefix)/Resources/English.lproj $(prefix)/lib; do\
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $(DESTDIR)$$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	$(LN) -fsn include/python$(VERSION) $(DESTDIR)$(prefix)/Headers
	sed 's/%VERSION%/'"`$(RUNSHARED) ./$(BUILDPYTHON) -c 'import platform; print platform.python_version()'`"'/g' < $(RESSRCDIR)/Info.plist > $(DESTDIR)$(prefix)/Resources/Info.plist
	$(LN) -fsn $(VERSION) $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Versions/Current
	$(LN) -fsn Versions/Current/$(PYTHONFRAMEWORK) $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/$(PYTHONFRAMEWORK)
	$(LN) -fsn Versions/Current/Headers $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Headers
	$(LN) -fsn Versions/Current/Resources $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Resources
	$(INSTALL_SHARED) $(LDLIBRARY) $(DESTDIR)$(PYTHONFRAMEWORKPREFIX)/$(LDLIBRARY)

# This installs Mac/Lib into the framework
# Install a number of symlinks to keep software that expects a normal unix
# install (which includes python-config) happy.
frameworkinstallmaclib:
	ln -fs "../../../$(PYTHONFRAMEWORK)" "$(DESTDIR)$(prefix)/lib/python$(VERSION)/config/libpython$(VERSION).a"
	ln -fs "../../../$(PYTHONFRAMEWORK)" "$(DESTDIR)$(prefix)/lib/python$(VERSION)/config/libpython$(VERSION).dylib"
	ln -fs "../$(PYTHONFRAMEWORK)" "$(DESTDIR)$(prefix)/lib/libpython$(VERSION).dylib"
	cd Mac && $(MAKE) installmacsubtree DESTDIR="$(DESTDIR)"

# This installs the IDE, the Launcher and other apps into /Applications
frameworkinstallapps:
	cd Mac && $(MAKE) installapps DESTDIR="$(DESTDIR)"

# This install the unix python and pythonw tools in /usr/local/bin
frameworkinstallunixtools:
	cd Mac && $(MAKE) installunixtools DESTDIR="$(DESTDIR)"

frameworkaltinstallunixtools:
	cd Mac && $(MAKE) altinstallunixtools DESTDIR="$(DESTDIR)"

# This installs the Demos and Tools into the applications directory.
# It is not part of a normal frameworkinstall
frameworkinstallextras:
	cd Mac && $(MAKE) installextras DESTDIR="$(DESTDIR)"

# This installs a few of the useful scripts in Tools/scripts
scriptsinstall:
	SRCDIR=$(srcdir) $(RUNSHARED) \
	$(PYTHON_FOR_BUILD) $(srcdir)/Tools/scripts/setup.py install \
	--prefix=$(prefix) \
	--install-scripts=$(BINDIR) \
	--root=$(DESTDIR)/

# Build the toplevel Makefile
Makefile.pre: Makefile.pre.in config.status
	CONFIG_FILES=Makefile.pre CONFIG_HEADERS= $(SHELL) config.status
	$(MAKE) -f Makefile.pre Makefile

# Run the configure script.
config.status:	$(srcdir)/configure
	$(SHELL) $(srcdir)/configure $(CONFIG_ARGS)

.PRECIOUS: config.status $(BUILDPYTHON) Makefile Makefile.pre

# Some make's put the object file in the current directory
.c.o:
	$(CC) -c $(PY_CFLAGS) -o $@ $<

# Run reindent on the library
reindent:
	./$(BUILDPYTHON) $(srcdir)/Tools/scripts/reindent.py -r $(srcdir)/Lib

# Rerun configure with the same options as it was run last time,
# provided the config.status script exists
recheck:
	$(SHELL) config.status --recheck
	$(SHELL) config.status

# Rebuild the configure script from configure.ac; also rebuild pyconfig.h.in
autoconf:
	(cd $(srcdir); autoconf)
	(cd $(srcdir); autoheader)

# Create a tags file for vi
tags::
	cd $(srcdir); \
	ctags -w -t Include/*.h; \
	for i in $(SRCDIRS); do ctags -w -t -a $$i/*.[ch]; \
	done; \
	sort -o tags tags

# Create a tags file for GNU Emacs
TAGS::
	cd $(srcdir); \
	etags Include/*.h; \
	for i in $(SRCDIRS); do etags -a $$i/*.[ch]; done

# Touch generated files
touch:
	cd $(srcdir); \
	touch Include/Python-ast.h Python/Python-ast.c

# Sanitation targets -- clean leaves libraries, executables and tags
# files, which clobber removes as well
pycremoval:
	find $(srcdir) -name '*.py[co]' -exec rm -f {} ';'

clean: pycremoval
	find . -name '*.[oa]' -exec rm -f {} ';'
	find . -name '*.s[ol]' -exec rm -f {} ';'
	find . -name '*.so.[0-9]*.[0-9]*' -exec rm -f {} ';'
	find build -name 'fficonfig.h' -exec rm -f {} ';' || true
	find build -name 'fficonfig.py' -exec rm -f {} ';' || true
	-rm -f Lib/lib2to3/*Grammar*.pickle
	-rm -rf build

profile-removal:
	find . -name '*.gc??' -exec rm -f {} ';'
	find . -name '*.profclang?' -exec rm -f {} ';'
	find . -name '*.dyn' -exec rm -f {} ';'

clobber: clean profile-removal
	-rm -f $(BUILDPYTHON) $(PGEN) $(LIBRARY) $(LDLIBRARY) $(DLLLIBRARY) \
		tags TAGS \
		config.cache config.log pyconfig.h Modules/config.c
	-rm -rf build platform
	-rm -rf $(PYTHONFRAMEWORKDIR)

# Make things extra clean, before making a distribution:
# remove all generated files, even Makefile[.pre]
# Keep configure and Python-ast.[ch], it's possible they can't be generated
distclean: clobber
	for file in Lib/test/data/* ; do \
	    if test "$$file" != "Lib/test/data/README"; then rm "$$file"; fi; \
	done
	-rm -f core Makefile Makefile.pre config.status \
		Modules/Setup Modules/Setup.local Modules/Setup.config \
		Modules/ld_so_aix Modules/python.exp Misc/python.pc
	-rm -f python*-gdb.py
	-rm -f pybuilddir.txt
	find $(srcdir)/[a-zA-Z]* '(' -name '*.fdc' -o -name '*~' \
				     -o -name '[@,#]*' -o -name '*.old' \
				     -o -name '*.orig' -o -name '*.rej' \
				     -o -name '*.bak' ')' \
				     -exec rm -f {} ';'

# Check for smelly exported symbols (not starting with Py/_Py)
smelly: all
	nm -p $(LIBRARY) | \
		sed -n "/ [TDB] /s/.* //p" | grep -v "^_*Py" | sort -u; \

# Find files with funny names
funny:
	find $(SUBDIRS) $(SUBDIRSTOO) -type d \
		-o -name '*.[chs]' \
		-o -name '*.py' \
		-o -name '*.doc' \
		-o -name '*.sty' \
		-o -name '*.bib' \
		-o -name '*.dat' \
		-o -name '*.el' \
		-o -name '*.fd' \
		-o -name '*.in' \
		-o -name '*.tex' \
		-o -name '*,[vpt]' \
		-o -name 'Setup' \
		-o -name 'Setup.*' \
		-o -name README \
		-o -name Makefile \
		-o -name ChangeLog \
		-o -name Repository \
		-o -name Root \
		-o -name Entries \
		-o -name Tag \
		-o -name tags \
		-o -name TAGS \
		-o -name .cvsignore \
		-o -name MANIFEST \
		-o -print

# Perform some verification checks on any modified files.
patchcheck:
	$(RUNSHARED) ./$(BUILDPYTHON) $(srcdir)/Tools/scripts/patchcheck.py

# Dependencies

Python/thread.o:  $(srcdir)/Python/thread_atheos.h $(srcdir)/Python/thread_beos.h $(srcdir)/Python/thread_cthread.h $(srcdir)/Python/thread_foobar.h $(srcdir)/Python/thread_lwp.h $(srcdir)/Python/thread_nt.h $(srcdir)/Python/thread_os2.h $(srcdir)/Python/thread_pth.h $(srcdir)/Python/thread_pthread.h $(srcdir)/Python/thread_sgi.h $(srcdir)/Python/thread_solaris.h $(srcdir)/Python/thread_wince.h

# Declare targets that aren't real files
.PHONY: all build_all sharedmods oldsharedmods test quicktest memtest
.PHONY: install altinstall oldsharedinstall bininstall altbininstall
.PHONY: maninstall libinstall inclinstall libainstall sharedinstall
.PHONY: frameworkinstall frameworkinstallframework frameworkinstallstructure
.PHONY: frameworkinstallmaclib frameworkinstallapps frameworkinstallunixtools
.PHONY: frameworkaltinstallunixtools recheck autoconf clean clobber distclean
.PHONY: smelly funny patchcheck touch altmaninstall commoninstall
.PHONY: gdbhooks

# IF YOU PUT ANYTHING HERE IT WILL GO AWAY

# Rules appended by makedepend

Modules/threadmodule.o: $(srcdir)/Modules/threadmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/threadmodule.c -o Modules/threadmodule.o
Modules/threadmodule$(SO):  Modules/threadmodule.o; $(BLDSHARED)  Modules/threadmodule.o   -o Modules/threadmodule$(SO)
Modules/signalmodule.o: $(srcdir)/Modules/signalmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/signalmodule.c -o Modules/signalmodule.o
Modules/signalmodule$(SO):  Modules/signalmodule.o; $(BLDSHARED)  Modules/signalmodule.o   -o Modules/signalmodule$(SO)
Modules/_bisectmodule.o: $(srcdir)/Modules/_bisectmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_bisectmodule.c -o Modules/_bisectmodule.o
Modules/_bisectmodule$(SO):  Modules/_bisectmodule.o; $(BLDSHARED)  Modules/_bisectmodule.o   -o Modules/_bisectmodule$(SO)
Modules/_codecsmodule.o: $(srcdir)/Modules/_codecsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_codecsmodule.c -o Modules/_codecsmodule.o
Modules/_codecsmodule$(SO):  Modules/_codecsmodule.o; $(BLDSHARED)  Modules/_codecsmodule.o   -o Modules/_codecsmodule$(SO)
Modules/_codecs_cn.o: $(srcdir)/Modules/cjkcodecs/_codecs_cn.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/_codecs_cn.c -o Modules/_codecs_cn.o
Modules/_codecs_cn$(SO):  Modules/_codecs_cn.o; $(BLDSHARED)  Modules/_codecs_cn.o   -o Modules/_codecs_cn$(SO)
Modules/_codecs_hk.o: $(srcdir)/Modules/cjkcodecs/_codecs_hk.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/_codecs_hk.c -o Modules/_codecs_hk.o
Modules/_codecs_hk$(SO):  Modules/_codecs_hk.o; $(BLDSHARED)  Modules/_codecs_hk.o   -o Modules/_codecs_hk$(SO)
Modules/_codecs_iso2022.o: $(srcdir)/Modules/cjkcodecs/_codecs_iso2022.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/_codecs_iso2022.c -o Modules/_codecs_iso2022.o
Modules/_codecs_iso2022$(SO):  Modules/_codecs_iso2022.o; $(BLDSHARED)  Modules/_codecs_iso2022.o   -o Modules/_codecs_iso2022$(SO)
Modules/_codecs_jp.o: $(srcdir)/Modules/cjkcodecs/_codecs_jp.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/_codecs_jp.c -o Modules/_codecs_jp.o
Modules/_codecs_jp$(SO):  Modules/_codecs_jp.o; $(BLDSHARED)  Modules/_codecs_jp.o   -o Modules/_codecs_jp$(SO)
Modules/_codecs_kr.o: $(srcdir)/Modules/cjkcodecs/_codecs_kr.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/_codecs_kr.c -o Modules/_codecs_kr.o
Modules/_codecs_kr$(SO):  Modules/_codecs_kr.o; $(BLDSHARED)  Modules/_codecs_kr.o   -o Modules/_codecs_kr$(SO)
Modules/_codecs_tw.o: $(srcdir)/Modules/cjkcodecs/_codecs_tw.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/_codecs_tw.c -o Modules/_codecs_tw.o
Modules/_codecs_tw$(SO):  Modules/_codecs_tw.o; $(BLDSHARED)  Modules/_codecs_tw.o   -o Modules/_codecs_tw$(SO)
Modules/_collectionsmodule.o: $(srcdir)/Modules/_collectionsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_collectionsmodule.c -o Modules/_collectionsmodule.o
Modules/_collectionsmodule$(SO):  Modules/_collectionsmodule.o; $(BLDSHARED)  Modules/_collectionsmodule.o   -o Modules/_collectionsmodule$(SO)
Modules/cryptmodule.o: $(srcdir)/Modules/cryptmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cryptmodule.c -o Modules/cryptmodule.o
Modules/cryptmodule$(SO):  Modules/cryptmodule.o; $(BLDSHARED)  Modules/cryptmodule.o   -o Modules/cryptmodule$(SO)
Modules/_csv.o: $(srcdir)/Modules/_csv.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_csv.c -o Modules/_csv.o
Modules/_csv$(SO):  Modules/_csv.o; $(BLDSHARED)  Modules/_csv.o   -o Modules/_csv$(SO)
Modules/datetimemodule.o: $(srcdir)/Modules/datetimemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/datetimemodule.c -o Modules/datetimemodule.o
Modules/datetimemodule$(SO):  Modules/datetimemodule.o; $(BLDSHARED)  Modules/datetimemodule.o   -o Modules/datetimemodule$(SO)
Modules/_elementtree.o: $(srcdir)/Modules/_elementtree.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/expat -c $(srcdir)/Modules/_elementtree.c -o Modules/_elementtree.o
Modules/_elementtree$(SO):  Modules/_elementtree.o; $(BLDSHARED)  Modules/_elementtree.o   -o Modules/_elementtree$(SO)
Modules/_functoolsmodule.o: $(srcdir)/Modules/_functoolsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_functoolsmodule.c -o Modules/_functoolsmodule.o
Modules/_functoolsmodule$(SO):  Modules/_functoolsmodule.o; $(BLDSHARED)  Modules/_functoolsmodule.o   -o Modules/_functoolsmodule$(SO)
Modules/_hotshot.o: $(srcdir)/Modules/_hotshot.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_hotshot.c -o Modules/_hotshot.o
Modules/_hotshot$(SO):  Modules/_hotshot.o; $(BLDSHARED)  Modules/_hotshot.o   -o Modules/_hotshot$(SO)
Modules/bufferedio.o: $(srcdir)/Modules/_io/bufferedio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/bufferedio.c -o Modules/bufferedio.o
Modules/bytesio.o: $(srcdir)/Modules/_io/bytesio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/bytesio.c -o Modules/bytesio.o
Modules/fileio.o: $(srcdir)/Modules/_io/fileio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/fileio.c -o Modules/fileio.o
Modules/iobase.o: $(srcdir)/Modules/_io/iobase.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/iobase.c -o Modules/iobase.o
Modules/_iomodule.o: $(srcdir)/Modules/_io/_iomodule.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/_iomodule.c -o Modules/_iomodule.o
Modules/stringio.o: $(srcdir)/Modules/_io/stringio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/stringio.c -o Modules/stringio.o
Modules/textio.o: $(srcdir)/Modules/_io/textio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/textio.c -o Modules/textio.o
Modules/_iomodule$(SO):  Modules/bufferedio.o Modules/bytesio.o Modules/fileio.o Modules/iobase.o Modules/_iomodule.o Modules/stringio.o Modules/textio.o; $(BLDSHARED)  Modules/bufferedio.o Modules/bytesio.o Modules/fileio.o Modules/iobase.o Modules/_iomodule.o Modules/stringio.o Modules/textio.o   -o Modules/_iomodule$(SO)
Modules/_json.o: $(srcdir)/Modules/_json.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_json.c -o Modules/_json.o
Modules/_json$(SO):  Modules/_json.o; $(BLDSHARED)  Modules/_json.o   -o Modules/_json$(SO)
Modules/_localemodule.o: $(srcdir)/Modules/_localemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_localemodule.c -o Modules/_localemodule.o
Modules/_localemodule$(SO):  Modules/_localemodule.o; $(BLDSHARED)  Modules/_localemodule.o   -o Modules/_localemodule$(SO)
Modules/_lsprof.o: $(srcdir)/Modules/_lsprof.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_lsprof.c -o Modules/_lsprof.o
Modules/rotatingtree.o: $(srcdir)/Modules/rotatingtree.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/rotatingtree.c -o Modules/rotatingtree.o
Modules/_lsprof$(SO):  Modules/_lsprof.o Modules/rotatingtree.o; $(BLDSHARED)  Modules/_lsprof.o Modules/rotatingtree.o   -o Modules/_lsprof$(SO)
Modules/_heapqmodule.o: $(srcdir)/Modules/_heapqmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_heapqmodule.c -o Modules/_heapqmodule.o
Modules/_heapqmodule$(SO):  Modules/_heapqmodule.o; $(BLDSHARED)  Modules/_heapqmodule.o   -o Modules/_heapqmodule$(SO)
Modules/md5module.o: $(srcdir)/Modules/md5module.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/md5module.c -o Modules/md5module.o
Modules/md5.o: $(srcdir)/Modules/md5.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/md5.c -o Modules/md5.o
Modules/_md5module$(SO):  Modules/md5module.o Modules/md5.o; $(BLDSHARED)  Modules/md5module.o Modules/md5.o   -o Modules/_md5module$(SO)
Modules/multibytecodec.o: $(srcdir)/Modules/cjkcodecs/multibytecodec.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cjkcodecs/multibytecodec.c -o Modules/multibytecodec.o
Modules/_multibytecodecmodule$(SO):  Modules/multibytecodec.o; $(BLDSHARED)  Modules/multibytecodec.o   -o Modules/_multibytecodecmodule$(SO)
Modules/multiprocessing.o: $(srcdir)/Modules/_multiprocessing/multiprocessing.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_multiprocessing/multiprocessing.c -o Modules/multiprocessing.o
Modules/socket_connection.o: $(srcdir)/Modules/_multiprocessing/socket_connection.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_multiprocessing/socket_connection.c -o Modules/socket_connection.o
Modules/semaphore.o: $(srcdir)/Modules/_multiprocessing/semaphore.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_multiprocessing/semaphore.c -o Modules/semaphore.o
Modules/_multiprocessingmodule$(SO):  Modules/multiprocessing.o Modules/socket_connection.o Modules/semaphore.o; $(BLDSHARED)  Modules/multiprocessing.o Modules/socket_connection.o Modules/semaphore.o   -o Modules/_multiprocessingmodule$(SO)
Modules/_randommodule.o: $(srcdir)/Modules/_randommodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_randommodule.c -o Modules/_randommodule.o
Modules/_randommodule$(SO):  Modules/_randommodule.o; $(BLDSHARED)  Modules/_randommodule.o   -o Modules/_randommodule$(SO)
Modules/shamodule.o: $(srcdir)/Modules/shamodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/shamodule.c -o Modules/shamodule.o
Modules/_shamodule$(SO):  Modules/shamodule.o; $(BLDSHARED)  Modules/shamodule.o   -o Modules/_shamodule$(SO)
Modules/sha256module.o: $(srcdir)/Modules/sha256module.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/sha256module.c -o Modules/sha256module.o
Modules/_sha256module$(SO):  Modules/sha256module.o; $(BLDSHARED)  Modules/sha256module.o   -o Modules/_sha256module$(SO)
Modules/sha512module.o: $(srcdir)/Modules/sha512module.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/sha512module.c -o Modules/sha512module.o
Modules/_sha512module$(SO):  Modules/sha512module.o; $(BLDSHARED)  Modules/sha512module.o   -o Modules/_sha512module$(SO)
Modules/socketmodule.o: $(srcdir)/Modules/socketmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/socketmodule.c -o Modules/socketmodule.o
Modules/_socketmodule$(SO):  Modules/socketmodule.o; $(BLDSHARED)  Modules/socketmodule.o   -o Modules/_socketmodule$(SO)
Modules/_sre.o: $(srcdir)/Modules/_sre.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_sre.c -o Modules/_sre.o
Modules/_sre$(SO):  Modules/_sre.o; $(BLDSHARED)  Modules/_sre.o   -o Modules/_sre$(SO)
Modules/symtablemodule.o: $(srcdir)/Modules/symtablemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/symtablemodule.c -o Modules/symtablemodule.o
Modules/_symtablemodule$(SO):  Modules/symtablemodule.o; $(BLDSHARED)  Modules/symtablemodule.o   -o Modules/_symtablemodule$(SO)
Modules/cache.o: $(srcdir)/Modules/_sqlite/cache.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/cache.c -o Modules/cache.o
Modules/connection.o: $(srcdir)/Modules/_sqlite/connection.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/connection.c -o Modules/connection.o
Modules/cursor.o: $(srcdir)/Modules/_sqlite/cursor.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/cursor.c -o Modules/cursor.o
Modules/microprotocols.o: $(srcdir)/Modules/_sqlite/microprotocols.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/microprotocols.c -o Modules/microprotocols.o
Modules/module.o: $(srcdir)/Modules/_sqlite/module.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/module.c -o Modules/module.o
Modules/prepare_protocol.o: $(srcdir)/Modules/_sqlite/prepare_protocol.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/prepare_protocol.c -o Modules/prepare_protocol.o
Modules/row.o: $(srcdir)/Modules/_sqlite/row.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/row.c -o Modules/row.o
Modules/statement.o: $(srcdir)/Modules/_sqlite/statement.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/statement.c -o Modules/statement.o
Modules/util.o: $(srcdir)/Modules/_sqlite/util.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_sqlite -DMODULE_NAME='"sqlite3"' -DSQLITE_OMIT_LOAD_EXTENSION -c $(srcdir)/Modules/_sqlite/util.c -o Modules/util.o
Modules/_sqlite3module$(SO):  Modules/cache.o Modules/connection.o Modules/cursor.o Modules/microprotocols.o Modules/module.o Modules/prepare_protocol.o Modules/row.o Modules/statement.o Modules/util.o; $(BLDSHARED)  Modules/cache.o Modules/connection.o Modules/cursor.o Modules/microprotocols.o Modules/module.o Modules/prepare_protocol.o Modules/row.o Modules/statement.o Modules/util.o  -lsqlite3  -o Modules/_sqlite3module$(SO)
Modules/_ssl.o: $(srcdir)/Modules/_ssl.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/../OpenSSL.framework/Headers -c $(srcdir)/Modules/_ssl.c -o Modules/_ssl.o
Modules/_ssl$(SO):  Modules/_ssl.o; $(BLDSHARED)  Modules/_ssl.o  -framework OpenSSL -F$(srcdir)/.. -DUSE_SSL  -o Modules/_ssl$(SO)
Modules/_struct.o: $(srcdir)/Modules/_struct.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_struct.c -o Modules/_struct.o
Modules/_struct$(SO):  Modules/_struct.o; $(BLDSHARED)  Modules/_struct.o   -o Modules/_struct$(SO)
Modules/_weakref.o: $(srcdir)/Modules/_weakref.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_weakref.c -o Modules/_weakref.o
Modules/_weakref$(SO):  Modules/_weakref.o; $(BLDSHARED)  Modules/_weakref.o   -o Modules/_weakref$(SO)
Modules/arraymodule.o: $(srcdir)/Modules/arraymodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/arraymodule.c -o Modules/arraymodule.o
Modules/arraymodule$(SO):  Modules/arraymodule.o; $(BLDSHARED)  Modules/arraymodule.o   -o Modules/arraymodule$(SO)
Modules/audioop.o: $(srcdir)/Modules/audioop.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/audioop.c -o Modules/audioop.o
Modules/audioop$(SO):  Modules/audioop.o; $(BLDSHARED)  Modules/audioop.o   -o Modules/audioop$(SO)
Modules/binascii.o: $(srcdir)/Modules/binascii.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/binascii.c -o Modules/binascii.o
Modules/binascii$(SO):  Modules/binascii.o; $(BLDSHARED)  Modules/binascii.o   -o Modules/binascii$(SO)
Modules/bsddbmodule.o: $(srcdir)/Modules/bsddbmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/bsddbmodule.c -o Modules/bsddbmodule.o
Modules/bsddb185module$(SO):  Modules/bsddbmodule.o; $(BLDSHARED)  Modules/bsddbmodule.o   -o Modules/bsddb185module$(SO)
Modules/bz2module.o: $(srcdir)/Modules/bz2module.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/../BZip2.framework/Headers -c $(srcdir)/Modules/bz2module.c -o Modules/bz2module.o
Modules/bz2module$(SO):  Modules/bz2module.o; $(BLDSHARED)  Modules/bz2module.o  -framework BZip2 -F$(srcdir)/..  -o Modules/bz2module$(SO)
Modules/cmathmodule.o: $(srcdir)/Modules/cmathmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cmathmodule.c -o Modules/cmathmodule.o
Modules/_math.o: $(srcdir)/Modules/_math.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_math.c -o Modules/_math.o
Modules/cmathmodule$(SO):  Modules/cmathmodule.o Modules/_math.o; $(BLDSHARED)  Modules/cmathmodule.o Modules/_math.o   -o Modules/cmathmodule$(SO)
Modules/cPickle.o: $(srcdir)/Modules/cPickle.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cPickle.c -o Modules/cPickle.o
Modules/cPickle$(SO):  Modules/cPickle.o; $(BLDSHARED)  Modules/cPickle.o   -o Modules/cPickle$(SO)
Modules/cStringIO.o: $(srcdir)/Modules/cStringIO.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cStringIO.c -o Modules/cStringIO.o
Modules/cStringIO$(SO):  Modules/cStringIO.o; $(BLDSHARED)  Modules/cStringIO.o   -o Modules/cStringIO$(SO)
Modules/dlmodule.o: $(srcdir)/Modules/dlmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/dlmodule.c -o Modules/dlmodule.o
Modules/dlmodule$(SO):  Modules/dlmodule.o; $(BLDSHARED)  Modules/dlmodule.o   -o Modules/dlmodule$(SO)
Modules/errnomodule.o: $(srcdir)/Modules/errnomodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/errnomodule.c -o Modules/errnomodule.o
Modules/errnomodule$(SO):  Modules/errnomodule.o; $(BLDSHARED)  Modules/errnomodule.o   -o Modules/errnomodule$(SO)
Modules/fcntlmodule.o: $(srcdir)/Modules/fcntlmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/fcntlmodule.c -o Modules/fcntlmodule.o
Modules/fcntlmodule$(SO):  Modules/fcntlmodule.o; $(BLDSHARED)  Modules/fcntlmodule.o   -o Modules/fcntlmodule$(SO)
Modules/future_builtins.o: $(srcdir)/Modules/future_builtins.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/future_builtins.c -o Modules/future_builtins.o
Modules/future_builtins$(SO):  Modules/future_builtins.o; $(BLDSHARED)  Modules/future_builtins.o   -o Modules/future_builtins$(SO)
Modules/grpmodule.o: $(srcdir)/Modules/grpmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/grpmodule.c -o Modules/grpmodule.o
Modules/grpmodule$(SO):  Modules/grpmodule.o; $(BLDSHARED)  Modules/grpmodule.o   -o Modules/grpmodule$(SO)
Modules/imageop.o: $(srcdir)/Modules/imageop.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/imageop.c -o Modules/imageop.o
Modules/imageop$(SO):  Modules/imageop.o; $(BLDSHARED)  Modules/imageop.o   -o Modules/imageop$(SO)
Modules/itertoolsmodule.o: $(srcdir)/Modules/itertoolsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/itertoolsmodule.c -o Modules/itertoolsmodule.o
Modules/itertoolsmodule$(SO):  Modules/itertoolsmodule.o; $(BLDSHARED)  Modules/itertoolsmodule.o   -o Modules/itertoolsmodule$(SO)
Modules/mathmodule.o: $(srcdir)/Modules/mathmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/mathmodule.c -o Modules/mathmodule.o
Modules/mathmodule$(SO):  Modules/mathmodule.o; $(BLDSHARED)  Modules/mathmodule.o   -o Modules/mathmodule$(SO)
Modules/mmapmodule.o: $(srcdir)/Modules/mmapmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/mmapmodule.c -o Modules/mmapmodule.o
Modules/mmapmodule$(SO):  Modules/mmapmodule.o; $(BLDSHARED)  Modules/mmapmodule.o   -o Modules/mmapmodule$(SO)
Modules/operator.o: $(srcdir)/Modules/operator.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/operator.c -o Modules/operator.o
Modules/operator$(SO):  Modules/operator.o; $(BLDSHARED)  Modules/operator.o   -o Modules/operator$(SO)
Modules/parsermodule.o: $(srcdir)/Modules/parsermodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/parsermodule.c -o Modules/parsermodule.o
Modules/parsermodule$(SO):  Modules/parsermodule.o; $(BLDSHARED)  Modules/parsermodule.o   -o Modules/parsermodule$(SO)
Modules/posixmodule.o: $(srcdir)/Modules/posixmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/posixmodule.c -o Modules/posixmodule.o
Modules/posixmodule$(SO):  Modules/posixmodule.o; $(BLDSHARED)  Modules/posixmodule.o   -o Modules/posixmodule$(SO)
Modules/puremodule.o: $(srcdir)/Modules/puremodule.c; $(CC) $(PY_CFLAGS)  $(WHICH_PURE_PRODUCTS) $(PURE_INCLS) $(PURE_STUBLIBS) -c $(srcdir)/Modules/puremodule.c -o Modules/puremodule.o
Modules/puremodule$(SO):  Modules/puremodule.o; $(BLDSHARED)  Modules/puremodule.o  $(WHICH_PURE_PRODUCTS) $(PURE_INCLS) $(PURE_STUBLIBS)  -o Modules/puremodule$(SO)
Modules/xmlparse.o: $(srcdir)/Modules/expat/xmlparse.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/expat -DHAVE_EXPAT_CONFIG_H -DUSE_PYEXPAT_CAPI -c $(srcdir)/Modules/expat/xmlparse.c -o Modules/xmlparse.o
Modules/xmlrole.o: $(srcdir)/Modules/expat/xmlrole.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/expat -DHAVE_EXPAT_CONFIG_H -DUSE_PYEXPAT_CAPI -c $(srcdir)/Modules/expat/xmlrole.c -o Modules/xmlrole.o
Modules/xmltok.o: $(srcdir)/Modules/expat/xmltok.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/expat -DHAVE_EXPAT_CONFIG_H -DUSE_PYEXPAT_CAPI -c $(srcdir)/Modules/expat/xmltok.c -o Modules/xmltok.o
Modules/pyexpat.o: $(srcdir)/Modules/pyexpat.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/expat -DHAVE_EXPAT_CONFIG_H -DUSE_PYEXPAT_CAPI -c $(srcdir)/Modules/pyexpat.c -o Modules/pyexpat.o
Modules/pyexpat$(SO):  Modules/xmlparse.o Modules/xmlrole.o Modules/xmltok.o Modules/pyexpat.o; $(BLDSHARED)  Modules/xmlparse.o Modules/xmlrole.o Modules/xmltok.o Modules/pyexpat.o   -o Modules/pyexpat$(SO)
Modules/pwdmodule.o: $(srcdir)/Modules/pwdmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/pwdmodule.c -o Modules/pwdmodule.o
Modules/pwdmodule$(SO):  Modules/pwdmodule.o; $(BLDSHARED)  Modules/pwdmodule.o   -o Modules/pwdmodule$(SO)
Modules/resource.o: $(srcdir)/Modules/resource.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/resource.c -o Modules/resource.o
Modules/resource$(SO):  Modules/resource.o; $(BLDSHARED)  Modules/resource.o   -o Modules/resource$(SO)
Modules/selectmodule.o: $(srcdir)/Modules/selectmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/selectmodule.c -o Modules/selectmodule.o
Modules/selectmodule$(SO):  Modules/selectmodule.o; $(BLDSHARED)  Modules/selectmodule.o   -o Modules/selectmodule$(SO)
Modules/stropmodule.o: $(srcdir)/Modules/stropmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/stropmodule.c -o Modules/stropmodule.o
Modules/stropmodule$(SO):  Modules/stropmodule.o; $(BLDSHARED)  Modules/stropmodule.o   -o Modules/stropmodule$(SO)
Modules/syslogmodule.o: $(srcdir)/Modules/syslogmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/syslogmodule.c -o Modules/syslogmodule.o
Modules/syslogmodule$(SO):  Modules/syslogmodule.o; $(BLDSHARED)  Modules/syslogmodule.o   -o Modules/syslogmodule$(SO)
Modules/termios.o: $(srcdir)/Modules/termios.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/termios.c -o Modules/termios.o
Modules/termios$(SO):  Modules/termios.o; $(BLDSHARED)  Modules/termios.o   -o Modules/termios$(SO)
Modules/timemodule.o: $(srcdir)/Modules/timemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/timemodule.c -o Modules/timemodule.o
Modules/timemodule$(SO):  Modules/timemodule.o; $(BLDSHARED)  Modules/timemodule.o   -o Modules/timemodule$(SO)
Modules/timingmodule.o: $(srcdir)/Modules/timingmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/timingmodule.c -o Modules/timingmodule.o
Modules/timingmodule$(SO):  Modules/timingmodule.o; $(BLDSHARED)  Modules/timingmodule.o   -o Modules/timingmodule$(SO)
Modules/unicodedata.o: $(srcdir)/Modules/unicodedata.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/unicodedata.c -o Modules/unicodedata.o
Modules/unicodedata$(SO):  Modules/unicodedata.o; $(BLDSHARED)  Modules/unicodedata.o   -o Modules/unicodedata$(SO)
Modules/zipimport.o: $(srcdir)/Modules/zipimport.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/zipimport.c -o Modules/zipimport.o
Modules/zipimport$(SO):  Modules/zipimport.o; $(BLDSHARED)  Modules/zipimport.o   -o Modules/zipimport$(SO)
Modules/zlibmodule.o: $(srcdir)/Modules/zlibmodule.c; $(CC) $(PY_CFLAGS)  -I$(prefix)/include -c $(srcdir)/Modules/zlibmodule.c -o Modules/zlibmodule.o
Modules/zlibmodule$(SO):  Modules/zlibmodule.o; $(BLDSHARED)  Modules/zlibmodule.o  -lz  -o Modules/zlibmodule$(SO)
Modules/_ctypes_test.o: $(srcdir)/Modules/_ctypes/_ctypes_test.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_ctypes/_ctypes_test.c -o Modules/_ctypes_test.o
Modules/_ctypes_test$(SO):  Modules/_ctypes_test.o; $(BLDSHARED)  Modules/_ctypes_test.o   -o Modules/_ctypes_test$(SO)
Modules/_testcapimodule.o: $(srcdir)/Modules/_testcapimodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_testcapimodule.c -o Modules/_testcapimodule.o
Modules/_testcapimodule$(SO):  Modules/_testcapimodule.o; $(BLDSHARED)  Modules/_testcapimodule.o   -o Modules/_testcapimodule$(SO)
Modules/_ctypes.o: $(srcdir)/Modules/_ctypes/_ctypes.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/_ctypes.c -o Modules/_ctypes.o
Modules/callbacks.o: $(srcdir)/Modules/_ctypes/callbacks.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/callbacks.c -o Modules/callbacks.o
Modules/callproc.o: $(srcdir)/Modules/_ctypes/callproc.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/callproc.c -o Modules/callproc.o
Modules/stgdict.o: $(srcdir)/Modules/_ctypes/stgdict.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/stgdict.c -o Modules/stgdict.o
Modules/cfield.o: $(srcdir)/Modules/_ctypes/cfield.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/cfield.c -o Modules/cfield.o
Modules/prep_cif.o: $(srcdir)/Modules/_ctypes/libffi_ios/prep_cif.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/prep_cif.c -o Modules/prep_cif.o
Modules/types.o: $(srcdir)/Modules/_ctypes/libffi_ios/types.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/types.c -o Modules/types.o
Modules/raw_api.o: $(srcdir)/Modules/_ctypes/libffi_ios/raw_api.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/raw_api.c -o Modules/raw_api.o
Modules/java_raw_api.o: $(srcdir)/Modules/_ctypes/libffi_ios/java_raw_api.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/java_raw_api.c -o Modules/java_raw_api.o
Modules/closures.o: $(srcdir)/Modules/_ctypes/libffi_ios/closures.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/closures.c -o Modules/closures.o
Modules/ffi64_x86_64.o: $(srcdir)/Modules/_ctypes/libffi_ios/x86/ffi64_x86_64.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/x86/ffi64_x86_64.c -o Modules/ffi64_x86_64.o
Modules/unix64_x86_64.o: $(srcdir)/Modules/_ctypes/libffi_ios/x86/unix64_x86_64.S; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_ctypes/libffi_ios/include -c $(srcdir)/Modules/_ctypes/libffi_ios/x86/unix64_x86_64.S -o Modules/unix64_x86_64.o
Modules/_ctypes$(SO):  Modules/_ctypes.o Modules/callbacks.o Modules/callproc.o Modules/stgdict.o Modules/cfield.o Modules/prep_cif.o Modules/types.o Modules/raw_api.o Modules/java_raw_api.o Modules/closures.o Modules/ffi64_x86_64.o Modules/unix64_x86_64.o; $(BLDSHARED)  Modules/_ctypes.o Modules/callbacks.o Modules/callproc.o Modules/stgdict.o Modules/cfield.o Modules/prep_cif.o Modules/types.o Modules/raw_api.o Modules/java_raw_api.o Modules/closures.o Modules/ffi64_x86_64.o Modules/unix64_x86_64.o   -o Modules/_ctypes$(SO)
Modules/posixmodule.o: $(srcdir)/Modules/posixmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/posixmodule.c -o Modules/posixmodule.o
Modules/posixmodule$(SO):  Modules/posixmodule.o; $(BLDSHARED)  Modules/posixmodule.o   -o Modules/posixmodule$(SO)
Modules/errnomodule.o: $(srcdir)/Modules/errnomodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/errnomodule.c -o Modules/errnomodule.o
Modules/errnomodule$(SO):  Modules/errnomodule.o; $(BLDSHARED)  Modules/errnomodule.o   -o Modules/errnomodule$(SO)
Modules/pwdmodule.o: $(srcdir)/Modules/pwdmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/pwdmodule.c -o Modules/pwdmodule.o
Modules/pwdmodule$(SO):  Modules/pwdmodule.o; $(BLDSHARED)  Modules/pwdmodule.o   -o Modules/pwdmodule$(SO)
Modules/_sre.o: $(srcdir)/Modules/_sre.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_sre.c -o Modules/_sre.o
Modules/_sre$(SO):  Modules/_sre.o; $(BLDSHARED)  Modules/_sre.o   -o Modules/_sre$(SO)
Modules/_codecsmodule.o: $(srcdir)/Modules/_codecsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_codecsmodule.c -o Modules/_codecsmodule.o
Modules/_codecsmodule$(SO):  Modules/_codecsmodule.o; $(BLDSHARED)  Modules/_codecsmodule.o   -o Modules/_codecsmodule$(SO)
Modules/_weakref.o: $(srcdir)/Modules/_weakref.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_weakref.c -o Modules/_weakref.o
Modules/_weakref$(SO):  Modules/_weakref.o; $(BLDSHARED)  Modules/_weakref.o   -o Modules/_weakref$(SO)
Modules/zipimport.o: $(srcdir)/Modules/zipimport.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/zipimport.c -o Modules/zipimport.o
Modules/zipimport$(SO):  Modules/zipimport.o; $(BLDSHARED)  Modules/zipimport.o   -o Modules/zipimport$(SO)
Modules/symtablemodule.o: $(srcdir)/Modules/symtablemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/symtablemodule.c -o Modules/symtablemodule.o
Modules/_symtablemodule$(SO):  Modules/symtablemodule.o; $(BLDSHARED)  Modules/symtablemodule.o   -o Modules/_symtablemodule$(SO)
Modules/xxsubtype.o: $(srcdir)/Modules/xxsubtype.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/xxsubtype.c -o Modules/xxsubtype.o
Modules/xxsubtype$(SO):  Modules/xxsubtype.o; $(BLDSHARED)  Modules/xxsubtype.o   -o Modules/xxsubtype$(SO)
