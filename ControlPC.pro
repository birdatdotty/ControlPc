CONFIG += c++11 console network

SOURCES += \
    main.cc \
    createSSLConfig.cc

HEADERS += \
    createSSLConfig.h

include(Client/Client.pri)
include(Server/Server.pri)
