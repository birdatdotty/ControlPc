#include "Server.h"

#include "CreateUser.h"
#include "testws.h"

Server* Server::init() {
    Server* server = new Server(8888);

    server->setCrtFile("c:/opt/ssl/test-pc.dotty.su.crt");
    server->setKeyFile("c:/opt/ssl/test-pc.dotty.su.key");

    server->regAction("create user", new CreateUser());
    server->regAction("test", new TestWs());

    server->start();

    return server;
}
