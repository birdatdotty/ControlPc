#include <QCoreApplication>

#include "Server.h"

#include "Action.h"
#include "CreateUser.h"
#include "testws.h"

#include "qtservice.h"

#ifdef QT_DEBUG
int main(int argc, char **argv)
{
    QCoreApplication a(argc, argv);
    Server::init();

    return a.exec();
}
#else
#include "Service.h"
int main(int argc, char **argv)
{
    Service service(argc, argv);
    qInfo() << "int main(int argc, char **argv)" << argv;
    return service.exec();
}
#endif
