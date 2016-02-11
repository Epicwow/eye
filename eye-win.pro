QT += core gui
QT += sql
QT += network
QT += multimedia

INCLUDEPATH += C:\cv\install\include
INCLUDEPATH += C:\cv\install\include\opencv
INCLUDEPATH += C:\cv\install\include\opencv2


LIBS += C:\cv\install\x86\mingw\lib\libopencv_calib3d300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_core300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_features2d300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_flann300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_hal300.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_highgui300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_imgcodecs300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_imgproc300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_ml300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_objdetect300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_photo300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_shape300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_stitching300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_superres300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_ts300.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_video300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_videoio300.dll.a
LIBS += C:\cv\install\x86\mingw\lib\libopencv_videostab300.dll.a



greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = eye
TEMPLATE = app

DEFINES += APP_VERSION=\\\"1.3.2\\\"

SOURCES += main.cpp \
    MainWindow.cpp \
    MatToQImage.cpp \
    FrameLabel.cpp \
    CameraView.cpp \
    ProcessingThread.cpp \
    CaptureThread.cpp \
    CameraConnectDialog.cpp \
    ImageProcessingSettingsDialog.cpp \
    SharedImageBuffer.cpp \
    syncthread.cpp

HEADERS += \
    MainWindow.h \
    Config.h \
    MatToQImage.h \
    FrameLabel.h \
    Structures.h \
    CameraView.h \
    ProcessingThread.h \
    CaptureThread.h \
    CameraConnectDialog.h \
    ImageProcessingSettingsDialog.h \
    SharedImageBuffer.h \
    Buffer.h \
    syncthread.h

FORMS += \
    MainWindow.ui \
    CameraView.ui \
    CameraConnectDialog.ui \
    ImageProcessingSettingsDialog.ui

QMAKE_CXXFLAGS += -Wall

RESOURCES += \
    sound.qrc \
    images.qrc
