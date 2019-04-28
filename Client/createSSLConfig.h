#ifndef CREATESSLCONFIG_H
#define CREATESSLCONFIG_H

#include <QSslConfiguration>
QSslConfiguration* createSSLConfig(QString cert, QString key, const QByteArray &passPhrase = QByteArray());

#endif // CREATESSLCONFIG_H
