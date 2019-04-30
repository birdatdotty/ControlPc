#include "createSSLConfig.h"

#include <QSslKey>
#include <QFile>

QSslKey openKey(QString fileName, const QByteArray &passPhrase = QByteArray())
{
  QFile keyFile(fileName);
  keyFile.open(QIODevice::ReadOnly);

  QSslKey sslKey(&keyFile, QSsl::Rsa, QSsl::Pem, QSsl::PrivateKey, passPhrase);

  return sslKey;
}

QSslCertificate openCert(QString fileName)
{
  QFile certFile(fileName);
  certFile.open(QIODevice::ReadOnly);
  QSslCertificate certificate(&certFile, QSsl::Pem);

  return certificate;
}

QSslConfiguration* createSSLConfig(QString cert, QString key, const QByteArray &passPhrase)
{
  QSslConfiguration *sslConfiguration = new QSslConfiguration;
  QList<QSslCertificate> listCA;

  sslConfiguration->setPeerVerifyMode(QSslSocket::VerifyNone);
  sslConfiguration->setLocalCertificate(openCert(cert));
  sslConfiguration->setPrivateKey(openKey(key, passPhrase));
  sslConfiguration->setProtocol(QSsl::TlsV1SslV3);

  return sslConfiguration;
}
