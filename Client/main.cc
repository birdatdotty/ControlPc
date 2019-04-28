#include <QCoreApplication>

#include "createSSLConfig.h"
#include "Client/WSClient.h"


int main(int argc, char *argv[])
{
  QCoreApplication app(argc, argv);

  QSslConfiguration *ssl = createSSLConfig("/home/user/cert/client.crt",
                                           "/home/user/cert/client.key");

  WSClient *client;
  client = new WSClient(QUrl("wss://localhost:4444"), ssl);
  QObject::connect(client, &WSClient::finish,
                   [&app](){app.exit();});


  return app.exec();
}
