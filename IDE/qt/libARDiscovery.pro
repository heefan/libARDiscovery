TARGET = libARDiscovery
TEMPLATE = lib

#DEFINES += LIBARDISCOVERY_LIBRARY

include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)

SOURCES  += \
    $$LibARDiscovery_src/ARDISCOVERY_Connection.c \
    $$LibARDiscovery_src/ARDISCOVERY_Device.c \
    $$LibARDiscovery_src/ARDISCOVERY_Discovery.c \
    $$LibARDiscovery_src/ARDISCOVERY_Error.c  \
    $$LibARDiscovery_src/ARDISCOVERY_NetworkConfiguration.c \
    $$LibARDiscovery_src/WIFI/*.c \
    $$LibARDiscovery_src/BLE/*.c

HEADERS  +=  \
    $$LibARDiscovery_src/ARDISCOVERY_Connection.h \
    $$LibARDiscovery_src/ARDISCOVERY_Device.h \
    $$LibARDiscovery_src/ARDISCOVERY_NetworkConfiguration.h

INCLUDEPATH = \
    $$LibARDiscovery_inc/ \
    $$LibARSAL_inc \
    $$LibARNetworkAL_inc \
    /usr/local/include \

LIBS += \



##########################################################################
# FixMe: The following code doesn't work when I set
#
#           HEADERS  +=   $$LibARDiscovery_src/*.h
#-------------------------------------------------------------------------
#macx {
#    HEADERS -= $$LibARDiscovery_src/ARDISCOVERY_AvahiDiscovery.h
#    SOURCES -= $$LibARDiscovery_src/ARDISCOVERY_AvahiDiscovery.c
#}
##########################################################################

#unix {
#    target.path = /usr/lib
#    INSTALLS += target
#}
