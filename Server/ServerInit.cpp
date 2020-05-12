#include "Server.h"

#include "CreateUser.h"
#include "testws.h"

Server* Server::init() {
    Server* server = new Server(8888);

    server->setCrtFile("/opt/ssl/lenovo.dotty.su.crt");
    server->setKeyFile("/opt/ssl/lenovo.dotty.su.key");

    server->regAction("create user", new CreateUser());
    server->regAction("test", new TestWs());

    server->start();

    return server;
}
