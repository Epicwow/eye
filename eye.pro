QT += core gui
QT += sql
QT += network

INCLUDEPATH += /usr/local/Cellar/opencv/2.4.12/include/opencv
INCLUDEPATH += /usr/local/Cellar/opencv/2.4.12/include
LIBS += -L/usr/local/Cellar/opencv/2.4.12/lib -lopencv_calib3d -lopencv_contrib \
    -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui \
    -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect \
    -lopencv_ocl -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab

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
    SharedImageBuffer.cpp

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
    Buffer.h

FORMS += \
    MainWindow.ui \
    CameraView.ui \
    CameraConnectDialog.ui \
    ImageProcessingSettingsDialog.ui

QMAKE_CXXFLAGS += -Wall
