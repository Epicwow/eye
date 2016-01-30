#ifndef SYNCTHREAD_H
#define SYNCTHREAD_H

#include <QObject>
#include <QThread>

class SyncThread : public QThread
{
private:
    QString imageSavePath;
public:
    SyncThread(QString localSavePath);
    void syncImagesToServer();
protected:
    void run();
};

#endif // SYNCTHREAD_H
