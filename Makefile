#############################################################################
# Makefile for building: Quebec.app/Contents/MacOS/Quebec
# Generated by qmake (2.01a) (Qt 4.5.3) on: Thu Nov 19 04:29:49 2009
# Project:  Quebec.pro
# Template: app
# Command: /Users/scott/bin/qmake -macx -o Makefile Quebec.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -gdwarf-2 -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -g -gdwarf-2 -Wall -W $(DEFINES)
INCPATH       = -I/usr/local/Trolltech/Qt-4.5.3/mkspecs/macx-g++ -I. -I/usr/local/Trolltech/Qt-4.5.3/lib/QtCore.framework/Versions/4/Headers -I/usr/local/Trolltech/Qt-4.5.3/include/QtCore -I/usr/local/Trolltech/Qt-4.5.3/lib/QtGui.framework/Versions/4/Headers -I/usr/local/Trolltech/Qt-4.5.3/include/QtGui -I/usr/local/Trolltech/Qt-4.5.3/include -I. -I. -I. -F/usr/local/Trolltech/Qt-4.5.3/lib
LINK          = g++
LFLAGS        = -headerpad_max_install_names
LIBS          = $(SUBLIBS) -F/usr/local/Trolltech/Qt-4.5.3/lib -L/usr/local/Trolltech/Qt-4.5.3/lib -framework QtGui -framework Carbon -framework AppKit -framework QtCore -lz -lm -framework ApplicationServices
AR            = ar cq
RANLIB        = ranlib -s
QMAKE         = /Users/scott/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
export MACOSX_DEPLOYMENT_TARGET = 10.3

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		MainWindow.cpp moc_MainWindow.cpp
OBJECTS       = main.o \
		MainWindow.o \
		moc_MainWindow.o
DIST          = /usr/local/Trolltech/Qt-4.5.3/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/mac.conf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/mac-g++.conf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/default_pre.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/dwarf2.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/debug.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/default_post.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/objective_c.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/warn_on.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/rez.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/sdk.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/include_source_dir.prf \
		Quebec.pro
QMAKE_TARGET  = Quebec
DESTDIR       = 
TARGET        = Quebec.app/Contents/MacOS/Quebec

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-g \
		-gdwarf-2 \
		-Wall \
		-W


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile Quebec.app/Contents/PkgInfo Quebec.app/Contents/Resources/empty.lproj Quebec.app/Contents/Info.plist $(TARGET)

$(TARGET): ui_MainWindow.h $(OBJECTS)  
	@$(CHK_DIR_EXISTS) Quebec.app/Contents/MacOS/ || $(MKDIR) Quebec.app/Contents/MacOS/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Quebec.pro  /usr/local/Trolltech/Qt-4.5.3/mkspecs/macx-g++/qmake.conf /usr/local/Trolltech/Qt-4.5.3/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/mac.conf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/mac-g++.conf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/default_pre.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/dwarf2.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/debug.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/default_post.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/objective_c.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/warn_on.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/rez.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/sdk.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/include_source_dir.prf \
		/Library/Frameworks/QtGui.framework/QtGui.prl \
		/Library/Frameworks/QtCore.framework/QtCore.prl
	$(QMAKE) -macx -o Makefile Quebec.pro
/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/unix.conf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/mac.conf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/common/mac-g++.conf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/qconfig.pri:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt_functions.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt_config.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/exclusive_builds.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/default_pre.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/default_pre.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/dwarf2.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/debug.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/default_post.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/default_post.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/objective_c.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/warn_on.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/qt.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/unix/thread.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/moc.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/rez.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/mac/sdk.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/resources.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/uic.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/yacc.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/lex.prf:
/usr/local/Trolltech/Qt-4.5.3/mkspecs/features/include_source_dir.prf:
/Library/Frameworks/QtGui.framework/QtGui.prl:
/Library/Frameworks/QtCore.framework/QtCore.prl:
qmake:  FORCE
	@$(QMAKE) -macx -o Makefile Quebec.pro

Quebec.app/Contents/PkgInfo: 
	@$(CHK_DIR_EXISTS) Quebec.app/Contents || $(MKDIR) Quebec.app/Contents 
	@$(DEL_FILE) Quebec.app/Contents/PkgInfo
	@echo "APPL????" >Quebec.app/Contents/PkgInfo
Quebec.app/Contents/Resources/empty.lproj: 
	@$(CHK_DIR_EXISTS) Quebec.app/Contents/Resources || $(MKDIR) Quebec.app/Contents/Resources 
	@touch Quebec.app/Contents/Resources/empty.lproj
	
Quebec.app/Contents/Info.plist: 
	@$(CHK_DIR_EXISTS) Quebec.app/Contents || $(MKDIR) Quebec.app/Contents 
	@$(DEL_FILE) Quebec.app/Contents/Info.plist
	@sed -e "s,@ICON@,,g" -e "s,@EXECUTABLE@,Quebec,g" -e "s,@TYPEINFO@,????,g" /usr/local/Trolltech/Qt-4.5.3/mkspecs/macx-g++/Info.plist.app >Quebec.app/Contents/Info.plist
dist: 
	@$(CHK_DIR_EXISTS) .tmp/Quebec1.0.0 || $(MKDIR) .tmp/Quebec1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/Quebec1.0.0/ && $(COPY_FILE) --parents MainWindow.h .tmp/Quebec1.0.0/ && $(COPY_FILE) --parents main.cpp MainWindow.cpp .tmp/Quebec1.0.0/ && $(COPY_FILE) --parents MainWindow.ui .tmp/Quebec1.0.0/ && (cd `dirname .tmp/Quebec1.0.0` && $(TAR) Quebec1.0.0.tar Quebec1.0.0 && $(COMPRESS) Quebec1.0.0.tar) && $(MOVE) `dirname .tmp/Quebec1.0.0`/Quebec1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Quebec1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) -r Quebec.app
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_moc_header_make_all: moc_MainWindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_MainWindow.cpp
moc_MainWindow.cpp: ui_MainWindow.h \
		MainWindow.h
	/usr/local/Trolltech/Qt-4.5.3/bin/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ MainWindow.h -o moc_MainWindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_uic_make_all: ui_MainWindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_MainWindow.h
ui_MainWindow.h: MainWindow.ui
	/usr/local/Trolltech/Qt-4.5.3/bin/uic MainWindow.ui -o ui_MainWindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp MainWindow.h \
		ui_MainWindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

MainWindow.o: MainWindow.cpp MainWindow.h \
		ui_MainWindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o MainWindow.o MainWindow.cpp

moc_MainWindow.o: moc_MainWindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_MainWindow.o moc_MainWindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
