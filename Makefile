#############################################################################
# Makefile for building: bin/qTUIO
# Generated by qmake (2.01a) (Qt 4.5.2) on: Mon Mar 15 20:52:57 2010
# Project:  qTUIO.pro
# Template: app
# Command: /usr/bin/qmake -unix -o Makefile qTUIO.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DOSC_HOST_LITTLE_ENDIAN -DQT_NO_DEBUG -DQT_XML_LIB -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtNetwork -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtOpenGL -I/usr/include/qt4/QtXml -I/usr/include/qt4 -Iinclude -Isrc/3rdparty/oscpack -Isrc/3rdparty/sdl -Isrc/3rdparty/tuio -I/usr/X11R6/include -Ibuild -Ibuild
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib -L/usr/X11R6/lib -lQtXml -lQtOpenGL -lQtGui -lQtNetwork -lQtCore -lGLU -lGL -lpthread
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = build/

####### Files

SOURCES       = src/3rdparty/tuio/TuioClient.cpp \
		src/3rdparty/tuio/TuioServer.cpp \
		src/3rdparty/tuio/TuioTime.cpp \
		src/3rdparty/oscpack/osc/OscTypes.cpp \
		src/3rdparty/oscpack/osc/OscOutboundPacketStream.cpp \
		src/3rdparty/oscpack/osc/OscReceivedElements.cpp \
		src/3rdparty/oscpack/osc/OscPrintReceivedElements.cpp \
		src/3rdparty/oscpack/ip/posix/NetworkingUtils.cpp \
		src/3rdparty/oscpack/ip/posix/UdpSocket.cpp \
		src/tuiointerface.cpp \
		src/main.cpp \
		src/qtuio.cpp build/moc_qtuio.cpp
OBJECTS       = build/TuioClient.o \
		build/TuioServer.o \
		build/TuioTime.o \
		build/OscTypes.o \
		build/OscOutboundPacketStream.o \
		build/OscReceivedElements.o \
		build/OscPrintReceivedElements.o \
		build/NetworkingUtils.o \
		build/UdpSocket.o \
		build/tuiointerface.o \
		build/main.o \
		build/qtuio.o \
		build/moc_qtuio.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/opengl.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		qTUIO.pro
QMAKE_TARGET  = qTUIO
DESTDIR       = bin/
TARGET        = bin/qTUIO

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

all: Makefile $(TARGET)

$(TARGET): build/ui_tuiointerface.h build/ui_qtuio.h $(OBJECTS)  
	@$(CHK_DIR_EXISTS) bin/ || $(MKDIR) bin/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: qTUIO.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/opengl.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/lib/libQtXml.prl \
		/usr/lib/libQtOpenGL.prl \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtNetwork.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -unix -o Makefile qTUIO.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/opengl.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/lib/libQtXml.prl:
/usr/lib/libQtOpenGL.prl:
/usr/lib/libQtGui.prl:
/usr/lib/libQtNetwork.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -unix -o Makefile qTUIO.pro

dist: 
	@$(CHK_DIR_EXISTS) build/qTUIO1.0.0 || $(MKDIR) build/qTUIO1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) build/qTUIO1.0.0/ && $(COPY_FILE) --parents include/tuiointerface.h include/qtuio.h src/3rdparty/oscpack/ip/IpEndpointName.h src/3rdparty/oscpack/ip/NetworkingUtils.h src/3rdparty/oscpack/ip/PacketListener.h src/3rdparty/oscpack/ip/TimerListener.h src/3rdparty/oscpack/ip/UdpSocket.h src/3rdparty/oscpack/osc/MessageMappingOscPacketListener.h src/3rdparty/oscpack/osc/OscException.h src/3rdparty/oscpack/osc/OscHostEndianness.h src/3rdparty/oscpack/osc/OscOutboundPacketStream.h src/3rdparty/oscpack/osc/OscPacketListener.h src/3rdparty/oscpack/osc/OscPrintReceivedElements.h src/3rdparty/oscpack/osc/OscReceivedElements.h src/3rdparty/oscpack/osc/OscTypes.h src/3rdparty/sdl/include/GL/glut.h src/3rdparty/sdl/include/SDL.h src/3rdparty/sdl/include/SDL_active.h src/3rdparty/sdl/include/SDL_audio.h src/3rdparty/sdl/include/SDL_byteorder.h src/3rdparty/sdl/include/SDL_cdrom.h src/3rdparty/sdl/include/SDL_config.h src/3rdparty/sdl/include/SDL_config_minimal.h src/3rdparty/sdl/include/SDL_config_win32.h src/3rdparty/sdl/include/SDL_copying.h src/3rdparty/sdl/include/SDL_cpuinfo.h src/3rdparty/sdl/include/SDL_endian.h src/3rdparty/sdl/include/SDL_error.h src/3rdparty/sdl/include/SDL_events.h src/3rdparty/sdl/include/SDL_getenv.h src/3rdparty/sdl/include/SDL_joystick.h src/3rdparty/sdl/include/SDL_keyboard.h src/3rdparty/sdl/include/SDL_keysym.h src/3rdparty/sdl/include/SDL_loadso.h src/3rdparty/sdl/include/SDL_main.h src/3rdparty/sdl/include/SDL_mouse.h src/3rdparty/sdl/include/SDL_mutex.h src/3rdparty/sdl/include/SDL_name.h src/3rdparty/sdl/include/SDL_opengl.h src/3rdparty/sdl/include/SDL_platform.h src/3rdparty/sdl/include/SDL_quit.h src/3rdparty/sdl/include/SDL_rwops.h src/3rdparty/sdl/include/SDL_stdinc.h src/3rdparty/sdl/include/SDL_syswm.h src/3rdparty/sdl/include/SDL_thread.h src/3rdparty/sdl/include/SDL_timer.h src/3rdparty/sdl/include/SDL_types.h src/3rdparty/sdl/include/SDL_version.h src/3rdparty/sdl/include/SDL_video.h src/3rdparty/sdl/include/begin_code.h src/3rdparty/sdl/include/close_code.h src/3rdparty/tuio/TuioClient.h src/3rdparty/tuio/TuioContainer.h src/3rdparty/tuio/TuioCursor.h src/3rdparty/tuio/TuioListener.h src/3rdparty/tuio/TuioObject.h src/3rdparty/tuio/TuioPoint.h src/3rdparty/tuio/TuioServer.h src/3rdparty/tuio/TuioTime.h build/qTUIO1.0.0/ && $(COPY_FILE) --parents src/3rdparty/tuio/TuioClient.cpp src/3rdparty/tuio/TuioServer.cpp src/3rdparty/tuio/TuioTime.cpp src/3rdparty/oscpack/osc/OscTypes.cpp src/3rdparty/oscpack/osc/OscOutboundPacketStream.cpp src/3rdparty/oscpack/osc/OscReceivedElements.cpp src/3rdparty/oscpack/osc/OscPrintReceivedElements.cpp src/3rdparty/oscpack/ip/posix/NetworkingUtils.cpp src/3rdparty/oscpack/ip/posix/UdpSocket.cpp src/tuiointerface.cpp src/main.cpp src/qtuio.cpp build/qTUIO1.0.0/ && $(COPY_FILE) --parents tuiointerface.ui qtuio.ui build/qTUIO1.0.0/ && (cd `dirname build/qTUIO1.0.0` && $(TAR) qTUIO1.0.0.tar qTUIO1.0.0 && $(COMPRESS) qTUIO1.0.0.tar) && $(MOVE) `dirname build/qTUIO1.0.0`/qTUIO1.0.0.tar.gz . && $(DEL_FILE) -r build/qTUIO1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: build/moc_qtuio.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) build/moc_qtuio.cpp
build/moc_qtuio.cpp: build/ui_qtuio.h \
		include/qtuio.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) include/qtuio.h -o build/moc_qtuio.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: build/ui_tuiointerface.h build/ui_qtuio.h
compiler_uic_clean:
	-$(DEL_FILE) build/ui_tuiointerface.h build/ui_qtuio.h
build/ui_tuiointerface.h: tuiointerface.ui
	/usr/bin/uic-qt4 tuiointerface.ui -o build/ui_tuiointerface.h

build/ui_qtuio.h: qtuio.ui
	/usr/bin/uic-qt4 qtuio.ui -o build/ui_qtuio.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

build/TuioClient.o: src/3rdparty/tuio/TuioClient.cpp src/3rdparty/tuio/TuioClient.h \
		src/3rdparty/tuio/TuioListener.h \
		src/3rdparty/tuio/TuioObject.h \
		src/3rdparty/tuio/TuioContainer.h \
		src/3rdparty/tuio/TuioPoint.h \
		src/3rdparty/tuio/TuioTime.h \
		src/3rdparty/tuio/TuioCursor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/TuioClient.o src/3rdparty/tuio/TuioClient.cpp

build/TuioServer.o: src/3rdparty/tuio/TuioServer.cpp src/3rdparty/tuio/TuioServer.h \
		src/3rdparty/tuio/TuioObject.h \
		src/3rdparty/tuio/TuioContainer.h \
		src/3rdparty/tuio/TuioPoint.h \
		src/3rdparty/tuio/TuioTime.h \
		src/3rdparty/tuio/TuioCursor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/TuioServer.o src/3rdparty/tuio/TuioServer.cpp

build/TuioTime.o: src/3rdparty/tuio/TuioTime.cpp src/3rdparty/tuio/TuioTime.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/TuioTime.o src/3rdparty/tuio/TuioTime.cpp

build/OscTypes.o: src/3rdparty/oscpack/osc/OscTypes.cpp src/3rdparty/oscpack/osc/OscTypes.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/OscTypes.o src/3rdparty/oscpack/osc/OscTypes.cpp

build/OscOutboundPacketStream.o: src/3rdparty/oscpack/osc/OscOutboundPacketStream.cpp src/3rdparty/oscpack/osc/OscOutboundPacketStream.h \
		src/3rdparty/oscpack/osc/OscTypes.h \
		src/3rdparty/oscpack/osc/OscException.h \
		src/3rdparty/oscpack/osc/OscHostEndianness.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/OscOutboundPacketStream.o src/3rdparty/oscpack/osc/OscOutboundPacketStream.cpp

build/OscReceivedElements.o: src/3rdparty/oscpack/osc/OscReceivedElements.cpp src/3rdparty/oscpack/osc/OscReceivedElements.h \
		src/3rdparty/oscpack/osc/OscTypes.h \
		src/3rdparty/oscpack/osc/OscException.h \
		src/3rdparty/oscpack/osc/OscHostEndianness.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/OscReceivedElements.o src/3rdparty/oscpack/osc/OscReceivedElements.cpp

build/OscPrintReceivedElements.o: src/3rdparty/oscpack/osc/OscPrintReceivedElements.cpp src/3rdparty/oscpack/osc/OscPrintReceivedElements.h \
		src/3rdparty/oscpack/osc/OscReceivedElements.h \
		src/3rdparty/oscpack/osc/OscTypes.h \
		src/3rdparty/oscpack/osc/OscException.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/OscPrintReceivedElements.o src/3rdparty/oscpack/osc/OscPrintReceivedElements.cpp

build/NetworkingUtils.o: src/3rdparty/oscpack/ip/posix/NetworkingUtils.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/NetworkingUtils.o src/3rdparty/oscpack/ip/posix/NetworkingUtils.cpp

build/UdpSocket.o: src/3rdparty/oscpack/ip/posix/UdpSocket.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/UdpSocket.o src/3rdparty/oscpack/ip/posix/UdpSocket.cpp

build/tuiointerface.o: src/tuiointerface.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/tuiointerface.o src/tuiointerface.cpp

build/main.o: src/main.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/main.o src/main.cpp

build/qtuio.o: src/qtuio.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/qtuio.o src/qtuio.cpp

build/moc_qtuio.o: build/moc_qtuio.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_qtuio.o build/moc_qtuio.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
