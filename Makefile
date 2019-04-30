#############################################################################
# Makefile for building: Control
# Generated by qmake (3.1) (Qt 5.11.3)
# Project:  Control.pro
# Template: app
# Command: /usr/bin/qmake-qt5 -o Makefile Control.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_WEBSOCKETS_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -O2 -std=gnu++11 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -isystem /usr/include/qt5 -isystem /usr/include/qt5/QtGui -isystem /usr/include/qt5/QtWebSockets -isystem /usr/include/qt5/QtNetwork -isystem /usr/include/qt5/QtCore -I. -isystem /usr/include/libdrm -I/usr/lib64/qt5/mkspecs/linux-g++
QMAKE         = /usr/bin/qmake-qt5
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/bin/qmake-qt5 -install qinstall
QINSTALL_PROGRAM = /usr/bin/qmake-qt5 -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = Control1.0.0
DISTDIR = /home/gluck/devel/control/Control/.tmp/Control1.0.0
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS) -lQt5Gui -lQt5WebSockets -lQt5Network -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cc \
		createSSLConfig.cc \
		Client/WSClient.cc \
		Client/onBinaryMessageReceived.cc \
		Client/onConnected.cc \
		Client/onSslErrors.cc \
		Client/onTextMessageReceived.cc \
		Server/WSServer.cc \
		Server/processTextMessage.cc \
		Server/processBinaryMessage.cc moc_WSClient.cpp \
		moc_WSServer.cpp
OBJECTS       = main.o \
		createSSLConfig.o \
		WSClient.o \
		onBinaryMessageReceived.o \
		onConnected.o \
		onSslErrors.o \
		onTextMessageReceived.o \
		WSServer.o \
		processTextMessage.o \
		processBinaryMessage.o \
		moc_WSClient.o \
		moc_WSServer.o
DIST          = /usr/lib64/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib64/qt5/mkspecs/common/unix.conf \
		/usr/lib64/qt5/mkspecs/common/linux.conf \
		/usr/lib64/qt5/mkspecs/common/sanitize.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt5/mkspecs/common/g++-base.conf \
		/usr/lib64/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib64/qt5/mkspecs/qconfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3danimation.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3danimation_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dcore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dcore_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dextras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dextras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dinput.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dinput_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dlogic.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dlogic_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickanimation.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickanimation_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickextras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickextras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickinput.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickinput_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickrender.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickrender_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickscene2d.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickscene2d_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3drender.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3drender_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_enginio.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_enginio_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_location.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_location_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediagsttools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_nfc.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_nfc_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioning_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioningquick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioningquick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldebug_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sensors.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sensors_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_serialport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uiplugin.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandclient.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandclient_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandcompositor.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandcompositor_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webchannel.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webchannel_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webengine.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webengine_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecore_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecoreheaders_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginewidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_websockets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_websockets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/lib64/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt5/mkspecs/features/qt_config.prf \
		/usr/lib64/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib64/qt5/mkspecs/features/spec_post.prf \
		/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt5/mkspecs/features/toolchain.prf \
		/usr/lib64/qt5/mkspecs/features/default_pre.prf \
		Client/Client.pri \
		Server/Server.pri \
		/usr/lib64/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib64/qt5/mkspecs/features/default_post.prf \
		/usr/lib64/qt5/mkspecs/features/warn_on.prf \
		/usr/lib64/qt5/mkspecs/features/qt.prf \
		/usr/lib64/qt5/mkspecs/features/resources.prf \
		/usr/lib64/qt5/mkspecs/features/moc.prf \
		/usr/lib64/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib64/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib64/qt5/mkspecs/features/file_copies.prf \
		/usr/lib64/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib64/qt5/mkspecs/features/exceptions.prf \
		/usr/lib64/qt5/mkspecs/features/yacc.prf \
		/usr/lib64/qt5/mkspecs/features/lex.prf \
		Control.pro createSSLConfig.h \
		Client/WSClient.h \
		Server/WSServer.h main.cc \
		createSSLConfig.cc \
		Client/WSClient.cc \
		Client/onBinaryMessageReceived.cc \
		Client/onConnected.cc \
		Client/onSslErrors.cc \
		Client/onTextMessageReceived.cc \
		Server/WSServer.cc \
		Server/processTextMessage.cc \
		Server/processBinaryMessage.cc
QMAKE_TARGET  = Control
DESTDIR       = 
TARGET        = Control


first: all
####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Control.pro /usr/lib64/qt5/mkspecs/linux-g++/qmake.conf /usr/lib64/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib64/qt5/mkspecs/common/unix.conf \
		/usr/lib64/qt5/mkspecs/common/linux.conf \
		/usr/lib64/qt5/mkspecs/common/sanitize.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt5/mkspecs/common/g++-base.conf \
		/usr/lib64/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib64/qt5/mkspecs/qconfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3danimation.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3danimation_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dcore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dcore_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dextras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dextras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dinput.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dinput_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dlogic.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dlogic_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickanimation.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickanimation_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickextras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickextras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickinput.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickinput_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickrender.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickrender_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickscene2d.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickscene2d_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3drender.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_3drender_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_enginio.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_enginio_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_location.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_location_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediagsttools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_nfc.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_nfc_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioning_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioningquick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_positioningquick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldebug_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sensors.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sensors_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_serialport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uiplugin.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandclient.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandclient_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandcompositor.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandcompositor_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webchannel.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webchannel_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webengine.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webengine_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecore_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecoreheaders_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginewidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_websockets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_websockets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/lib64/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt5/mkspecs/features/qt_config.prf \
		/usr/lib64/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib64/qt5/mkspecs/features/spec_post.prf \
		/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt5/mkspecs/features/toolchain.prf \
		/usr/lib64/qt5/mkspecs/features/default_pre.prf \
		Client/Client.pri \
		Server/Server.pri \
		/usr/lib64/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib64/qt5/mkspecs/features/default_post.prf \
		/usr/lib64/qt5/mkspecs/features/warn_on.prf \
		/usr/lib64/qt5/mkspecs/features/qt.prf \
		/usr/lib64/qt5/mkspecs/features/resources.prf \
		/usr/lib64/qt5/mkspecs/features/moc.prf \
		/usr/lib64/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib64/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib64/qt5/mkspecs/features/file_copies.prf \
		/usr/lib64/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib64/qt5/mkspecs/features/exceptions.prf \
		/usr/lib64/qt5/mkspecs/features/yacc.prf \
		/usr/lib64/qt5/mkspecs/features/lex.prf \
		Control.pro \
		/lib64/libQt5Gui.prl \
		/lib64/libQt5WebSockets.prl \
		/lib64/libQt5Network.prl \
		/lib64/libQt5Core.prl
	$(QMAKE) -o Makefile Control.pro
/usr/lib64/qt5/mkspecs/features/spec_pre.prf:
/usr/lib64/qt5/mkspecs/common/unix.conf:
/usr/lib64/qt5/mkspecs/common/linux.conf:
/usr/lib64/qt5/mkspecs/common/sanitize.conf:
/usr/lib64/qt5/mkspecs/common/gcc-base.conf:
/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib64/qt5/mkspecs/common/g++-base.conf:
/usr/lib64/qt5/mkspecs/common/g++-unix.conf:
/usr/lib64/qt5/mkspecs/qconfig.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3danimation.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3danimation_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dcore.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dcore_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dextras.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dextras_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dinput.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dinput_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dlogic.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dlogic_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquick.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquick_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickanimation.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickanimation_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickextras.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickextras_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickinput.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickinput_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickrender.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickrender_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickscene2d.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3dquickscene2d_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3drender.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_3drender_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_bluetooth.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_designer.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_designer_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_designercomponents_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_edid_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_egl_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_enginio.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_enginio_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_fb_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_glx_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_help.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_help_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_input_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_kms_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_location.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_location_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediagsttools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_nfc.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_nfc_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_packetprotocol_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_positioning.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_positioning_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_positioningquick.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_positioningquick_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldebug_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_script.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_script_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sensors.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sensors_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_serialport.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_serialport_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_service_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_svg.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_svg_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_theme_support_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_uiplugin.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandclient.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandclient_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandcompositor.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_waylandcompositor_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webchannel.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webchannel_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webengine.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webengine_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecore.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecore_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginecoreheaders_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginewidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webenginewidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_websockets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_websockets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/usr/lib64/qt5/mkspecs/features/qt_functions.prf:
/usr/lib64/qt5/mkspecs/features/qt_config.prf:
/usr/lib64/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib64/qt5/mkspecs/features/spec_post.prf:
/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib64/qt5/mkspecs/features/toolchain.prf:
/usr/lib64/qt5/mkspecs/features/default_pre.prf:
Client/Client.pri:
Server/Server.pri:
/usr/lib64/qt5/mkspecs/features/resolve_config.prf:
/usr/lib64/qt5/mkspecs/features/default_post.prf:
/usr/lib64/qt5/mkspecs/features/warn_on.prf:
/usr/lib64/qt5/mkspecs/features/qt.prf:
/usr/lib64/qt5/mkspecs/features/resources.prf:
/usr/lib64/qt5/mkspecs/features/moc.prf:
/usr/lib64/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib64/qt5/mkspecs/features/unix/thread.prf:
/usr/lib64/qt5/mkspecs/features/qmake_use.prf:
/usr/lib64/qt5/mkspecs/features/file_copies.prf:
/usr/lib64/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib64/qt5/mkspecs/features/exceptions.prf:
/usr/lib64/qt5/mkspecs/features/yacc.prf:
/usr/lib64/qt5/mkspecs/features/lex.prf:
Control.pro:
/lib64/libQt5Gui.prl:
/lib64/libQt5WebSockets.prl:
/lib64/libQt5Network.prl:
/lib64/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile Control.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents /usr/lib64/qt5/mkspecs/features/data/dummy.cpp $(DISTDIR)/
	$(COPY_FILE) --parents createSSLConfig.h Client/WSClient.h Server/WSServer.h $(DISTDIR)/
	$(COPY_FILE) --parents main.cc createSSLConfig.cc Client/WSClient.cc Client/onBinaryMessageReceived.cc Client/onConnected.cc Client/onSslErrors.cc Client/onTextMessageReceived.cc Server/WSServer.cc Server/processTextMessage.cc Server/processBinaryMessage.cc $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_objc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_objc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_predefs_make_all: moc_predefs.h
compiler_moc_predefs_clean:
	-$(DEL_FILE) moc_predefs.h
moc_predefs.h: /usr/lib64/qt5/mkspecs/features/data/dummy.cpp
	g++ -pipe -O2 -std=gnu++11 -Wall -W -dM -E -o moc_predefs.h /usr/lib64/qt5/mkspecs/features/data/dummy.cpp

compiler_moc_header_make_all: moc_WSClient.cpp moc_WSServer.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_WSClient.cpp moc_WSServer.cpp
moc_WSClient.cpp: Client/WSClient.h \
		moc_predefs.h \
		/usr/lib64/qt5/bin/moc
	/usr/lib64/qt5/bin/moc $(DEFINES) --include /home/gluck/devel/control/Control/moc_predefs.h -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/gluck/devel/control/Control -I/usr/include/qt5 -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtWebSockets -I/usr/include/qt5/QtNetwork -I/usr/include/qt5/QtCore -I/home/gluck/.local/include/c++/8.3.0 -I/home/gluck/.local/include/c++/8.3.0/x86_64-pc-linux-gnu -I/home/gluck/.local/include/c++/8.3.0/backward -I/home/gluck/.local/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include -I/usr/local/include -I/home/gluck/.local/include -I/home/gluck/.local/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include-fixed -I/usr/include Client/WSClient.h -o moc_WSClient.cpp

moc_WSServer.cpp: Server/WSServer.h \
		moc_predefs.h \
		/usr/lib64/qt5/bin/moc
	/usr/lib64/qt5/bin/moc $(DEFINES) --include /home/gluck/devel/control/Control/moc_predefs.h -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/gluck/devel/control/Control -I/usr/include/qt5 -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtWebSockets -I/usr/include/qt5/QtNetwork -I/usr/include/qt5/QtCore -I/home/gluck/.local/include/c++/8.3.0 -I/home/gluck/.local/include/c++/8.3.0/x86_64-pc-linux-gnu -I/home/gluck/.local/include/c++/8.3.0/backward -I/home/gluck/.local/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include -I/usr/local/include -I/home/gluck/.local/include -I/home/gluck/.local/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include-fixed -I/usr/include Server/WSServer.h -o moc_WSServer.cpp

compiler_moc_objc_header_make_all:
compiler_moc_objc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_predefs_clean compiler_moc_header_clean 

####### Compile

main.o: main.cc createSSLConfig.h \
		Server/WSServer.h \
		Client/WSClient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cc

createSSLConfig.o: createSSLConfig.cc createSSLConfig.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o createSSLConfig.o createSSLConfig.cc

WSClient.o: Client/WSClient.cc Client/WSClient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o WSClient.o Client/WSClient.cc

onBinaryMessageReceived.o: Client/onBinaryMessageReceived.cc Client/WSClient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o onBinaryMessageReceived.o Client/onBinaryMessageReceived.cc

onConnected.o: Client/onConnected.cc Client/WSClient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o onConnected.o Client/onConnected.cc

onSslErrors.o: Client/onSslErrors.cc Client/WSClient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o onSslErrors.o Client/onSslErrors.cc

onTextMessageReceived.o: Client/onTextMessageReceived.cc Client/WSClient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o onTextMessageReceived.o Client/onTextMessageReceived.cc

WSServer.o: Server/WSServer.cc Server/WSServer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o WSServer.o Server/WSServer.cc

processTextMessage.o: Server/processTextMessage.cc Server/WSServer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o processTextMessage.o Server/processTextMessage.cc

processBinaryMessage.o: Server/processBinaryMessage.cc Server/WSServer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o processBinaryMessage.o Server/processBinaryMessage.cc

moc_WSClient.o: moc_WSClient.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_WSClient.o moc_WSClient.cpp

moc_WSServer.o: moc_WSServer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_WSServer.o moc_WSServer.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

