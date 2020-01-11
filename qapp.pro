TARGET = qapp
TEMPLATE = lib
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += XN_SHARED_LIBRARY

SOURCES += qapp.cpp

CONFIG += c++14 dll
QMAKE_CXXFLAGS += -Wall -Wextra -pedantic

win32 {
	QMAKE_LFLAGS += -Wl,--kill-at
	QMAKE_CXXFLAGS += -enable-stdcall-fixup
}
win64 {
	QMAKE_LFLAGS += -Wl,--kill-at
	QMAKE_CXXFLAGS += -enable-stdcall-fixup
}

QT += core
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

VERSION_MAJOR = 1
VERSION_MINOR = 0

DEFINES += "VERSION_MAJOR=$$VERSION_MAJOR" \
	"VERSION_MINOR=$$VERSION_MINOR"

VERSION = $${VERSION_MAJOR}.$${VERSION_MINOR}
DEFINES += "VERSION=\\\"$${VERSION}\\\""
