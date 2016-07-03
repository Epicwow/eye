#include "syncthread.h"
#include <QProcess>
#include <QDebug>
#include <QApplication>

SyncThread::SyncThread(QString localSavePath)
{
    imageSavePath = QString("%1/").arg(localSavePath);
}

void SyncThread::syncImagesToServer()
{
    qDebug() << "sync images here" << imageSavePath;
    QString cmd;
    QString projectPath = QCoreApplication::applicationDirPath();
    QString remoteIp = "192.168.128.10";

#if defined(Q_OS_UNIX)
    cmd = QString("/usr/bin/rsync -auzv %1/eye_images/ sumeru@%2::volunteer_images/").arg(imageSavePath).arg(remoteIp);
#else
    cmd = QString("%1/rsync -auzv %1/ sumeru%2::volunteer_images").arg(projectPath).arg(remoteIp);
#endif
    qDebug() << cmd;
    QProcess::execute(cmd);

}

void SyncThread::run()
{
    while(true) {
        syncImagesToServer();
        QThread::sleep(20);
    }
}
