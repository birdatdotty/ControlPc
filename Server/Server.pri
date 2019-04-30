QT += websockets

HEADERS += \
    $$PWD/WSServer.h

SOURCES += \
    $$PWD/WSServer.cc \
    $$PWD/processTextMessage.cc \
    $$PWD/processBinaryMessage.cc
