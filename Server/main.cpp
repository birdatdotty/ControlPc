#include <QCoreApplication>

#include "Server.h"

#include "Action.h"
#include "CreateUser.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Server server(8888);
    server.regAction("create user", new CreateUser());

    return a.exec();
}
