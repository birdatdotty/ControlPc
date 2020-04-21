#include <QCoreApplication>

#include "Server.h"

#include "Action.h"
#include "CreateUser.h"
#include "testws.h"

int main(int argc, char **argv)
{
//    QCoreApplication a(argc, argv);

    Server server(argc, argv, 8888);
    server.regAction("create user", new CreateUser());
    server.regAction("test", new TestWs());

//    return a.exec();
    return server.exec();
}
