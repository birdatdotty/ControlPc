CONFIG += c++11 console network

SOURCES += \
    main.cc \
    createSSLConfig.cc

HEADERS += \
    createSSLConfig.h

include(Server/Server.pri)
