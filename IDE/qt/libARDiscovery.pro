TARGET = ardiscovery
TEMPLATE = lib
CONFIG = static

linux-g++ {
    include(/home/heefan/drone/drone_client/IDE/qt/common.pri)
}

macx{
    include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)
}

SOURCES += \
    $$LibARDiscovery_src/*.c \
    $$LibARDiscovery_src/Wifi/*.c \

HEADERS += \
    $$LibARDiscovery_src/*.h \
    $$LibARDiscovery_src/Wifi/*.h \

INCLUDEPATH += \
    /usr/include/ \
    /usr/local/include \
    $$LibARDiscoveryRoot/Build \   #config.h
    $$LibARDiscovery_src \
    $$LibARDiscoveryRoot/Includes/   #ARDISCOVERY_AvahiDiscovery.h

LIBS += -L/usr/local/lib -larsal -larnetworkal -larnetwork -ljson
