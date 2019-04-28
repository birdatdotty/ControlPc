#include <QCoreApplication>

#include "Server/WSServer.h"
#include "createSSLConfig.h"

int main(int argc, char *argv[])
{
  QCoreApplication a(argc, argv);

  QSslConfiguration *sslConfig = createSSLConfig();
  WSServer serv(4444, sslConfig);
//  WSServer serv(4444);

  return a.exec();
}
