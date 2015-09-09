QT += core-private serialbus

TARGET = qtmodbus

PLUGIN_TYPE = modbus
PLUGIN_EXTENDS = serialbus
PLUGIN_CLASS_NAME = LibModBusPlugin
load(qt_plugin)

INCLUDEPATH += $$PWD/../../../3rdparty/libmodbus
win32:include($$PWD/../../../3rdparty/libmodbus/libmodbus_win.pri)
LIBS_PRIVATE += -L$$MODULE_BASE_OUTDIR/lib -lmodbus$$qtPlatformTargetSuffix()

HEADERS += \
    libmodbusslave.h \
    libmodbusmaster.h \
    libmodbusreply.h

SOURCES += main.cpp \
    libmodbusslave.cpp \
    libmodbusmaster.cpp \
    libmodbusreply.cpp

OTHER_FILES = plugin.json
