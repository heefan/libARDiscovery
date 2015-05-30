linux-g++ {
    include(/home/heefan/drone/drone_client/IDE/qt/common.pri)
}

macx{
    include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)
}

TARGET = ardiscovery
TEMPLATE = lib
CONFIG += static
CONFIG += debug
DESTDIR = $$SdkInstallPath_lib

SOURCES += \
    $$LibARDiscovery_src/*.c \
    $$LibARDiscovery_src/Wifi/*.c \

#HEADERS += \
#    $$LibARDiscovery_src/*.h \
#    $$LibARDiscovery_src/Wifi/*.h \

#HEADERS -= \
#    $$LibARDiscovery_inc/libARDiscovery/ARDISCOVERY_BonjourDiscovery.h

INCLUDEPATH += \
    $$SdkInstallPath_inc \
    $$LibARDiscovery/Build \   #config.h
    $$LibARDiscovery_src \     #private header
#    $$LibARDiscovery_inc \  #ARDISCOVERY_AvahiDiscovery.h
#    $$LibARNetwork_inc \
#    $$LibARNetworkAL_inc \
#    $$LibARSAL_inc \

LIBS += \
    -L$$SdkInstallPath_lib \
    -larsal \
    -larnetworkal \
    -larnetwork \

