#include "createSSLConfig.h"

#include <QSslKey>
#include <QFile>

QSslKey openKey(QString fileName)
{
  QFile keyFile(fileName);
  keyFile.open(QIODevice::ReadOnly);

  QSslKey sslKey(&keyFile, QSsl::Rsa, QSsl::Pem);

  return sslKey;
}

QSslCertificate openCert(QString fileName)
{
  QFile certFile(fileName);
  certFile.open(QIODevice::ReadOnly);
  QSslCertificate certificate(&certFile, QSsl::Pem);

  return certificate;
}

QSslConfiguration* createSSLConfig()
{
  QSslConfiguration *sslConfiguration = new QSslConfiguration;
  QList<QSslCertificate> listCA;

  sslConfiguration->setPeerVerifyMode(QSslSocket::VerifyNone);
  sslConfiguration->setLocalCertificate(openCert("/home/user/cert/server.crt"));
  sslConfiguration->setPrivateKey(openKey("/home/user/cert/server.key"));
  sslConfiguration->setProtocol(QSsl::TlsV1SslV3);

  return sslConfiguration;
}
