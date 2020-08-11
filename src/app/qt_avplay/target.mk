QMAKE_PROJECT_FILE = $(REP_DIR)/src/app/qt_avplay/qt_avplay.pro

QMAKE_TARGET_BINARIES = qt_avplay

QT5_PORT_LIBS = libQt5Core libQt5Gui libQt5PrintSupport libQt5Widgets

LIBS = libc libm mesa qt5_component stdcxx qoost $(QT5_PORT_LIBS)

include $(call select_from_repositories,lib/import/import-qt5_qmake.mk)
