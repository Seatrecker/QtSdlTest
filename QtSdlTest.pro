#-------------------------------------------------
#
# Project created by QtCreator 2013-06-22T15:39:35
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtSdlTest
TEMPLATE = app

DEFINES += SDL_MAIN_HANDLED

SOURCES += main.cpp \
    mainwindow.cpp \
    sdleventthread.cpp \
    sdlaxiswidget.cpp \
    sdlpovwidget.cpp \
    sdlsliderwidget.cpp

HEADERS  += mainwindow.h \
    sdleventthread.h \
    sdlaxiswidget.h \
    sdlpovwidget.h \
    sdlsliderwidget.h

FORMS    += mainwindow.ui

win32 {
    INCLUDEPATH  *= $$(SDL_DIR)/include
    QMAKE_LIBDIR *= $$(SDL_DIR)/lib/x86
    LIBS += -lSDL2
}

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += sdl2
}
