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
    QString remoteIp = "192.168.1.5";

#if defined(Q_OS_UNIX)
    cmd = QString("/usr/bin/rsync -auzv %1/eye_images/ citta@%2::citta").arg(imageSavePath).arg(remoteIp);
#else
    cmd = QString("%1/rsync -auzv %1/ citta@%2::citta").arg(projectPath).arg(remoteIp);
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
