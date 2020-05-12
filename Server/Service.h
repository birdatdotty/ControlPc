#ifndef SERVICE_H
#define SERVICE_H

#include "qtservice.h"

class ServiceItem;

class Service: public QtService<QCoreApplication>
{
public:
    Service(int argc, char **argv);

protected:
    void start();
    void pause();
    void resume();
    void stop();

private:
    ServiceItem *serviceItem;
    QObject *app;
};

class ServiceItem
{
public:
    ServiceItem();
};

#endif // SERVICE_H
