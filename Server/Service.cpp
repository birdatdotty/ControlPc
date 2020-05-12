#include "Service.h"
#include "Server.h"

#include "CreateUser.h"
#include "testws.h"

#include <QFile>

ServiceItem::ServiceItem()
{

}

Service::Service(int argc, char **argv)
    : QtService<QCoreApplication>(argc, argv, "Qt Test Daemon")
{
    setServiceDescription("A dummy Test service implemented with Qt");
    setServiceFlags(QtServiceBase::CanBeSuspended);

    serviceItem = new ServiceItem;
}

void Service::start()
{
//    Server *server = new Server(8888);
//    app = server;

//    server->regAction("create user", new CreateUser());
//    server->regAction("test", new TestWs());
    Server::init();
}

void Service::pause()
{
    QFile tf("/123/service.txt");
    tf.open(QIODevice::WriteOnly);
    tf.write("void Service::pause()\n");
}

void Service::resume()
{
    QFile tf("/123/service.txt");
    tf.open(QIODevice::WriteOnly);
    tf.write("void Service::resume()");
}

void Service::stop()
{
    QFile tf("/123/serviceStop.txt");
    tf.open(QIODevice::WriteOnly);
    tf.write("void Service::stop()");
}
