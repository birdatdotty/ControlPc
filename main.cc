#include <QCoreApplication>

#include "createSSLConfig.h"
#include "Server/WSServer.h"
#include "Client/WSClient.h"


#define SERVER_CERT "/home/user/cert/server.crt"
#define SERVER_KEY "/home/user/cert/server.key"

#define CLIENT_CERT "/home/user/cert/client.crt"
#define CLIENT_KEY "/home/user/cert/client.key"

int main(int argc, char *argv[])
{
  QCoreApplication app(argc, argv);

  // server:
  QSslConfiguration *sslServer = createSSLConfig( SERVER_CERT,
                                                  SERVER_KEY);

  WSServer serv(4444, sslServer);
  // end server.

  // client:
  QSslConfiguration *sslClient = createSSLConfig( CLIENT_CERT,
                                                  CLIENT_KEY);

  WSClient *client;
  client = new WSClient(QUrl("wss://localhost:4444"), sslClient);
  QObject::connect(client, &WSClient::finish,
                   [&app](){app.exit();});

  // end client.


  return app.exec();
}
