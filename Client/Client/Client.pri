QT += websockets

HEADERS += \
    $$PWD/WSClient.h

SOURCES += \
    $$PWD/WSClient.cc \
    $$PWD/onBinaryMessageReceived.cc \
    $$PWD/onConnected.cc \
    $$PWD/onSslErrors.cc \
    $$PWD/onTextMessageReceived.cc
