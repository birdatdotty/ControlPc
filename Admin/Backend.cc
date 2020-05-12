#include "Backend.h"

#include <QFile>
#include <QJsonDocument>
#include <QJsonObject>

#include <QQmlEngine>
#include <QJSEngine>
#include <QSslKey>

Backend::Backend(QObject *parent)
    : QObject(parent),
      status(false)
{

}

QObject *Backend::init(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)

    static Backend *example = new Backend();
    return example;
}

void Backend::send(QString name, QString password)
{
    QJsonObject msg;
//    msg["action"] = "create user";
    msg["action"] = "test";
    QJsonObject data;
    data["name"] = name;
    data["password"] = password;

    msg["data"] = data;

    QJsonDocument doc(msg);

    qInfo() << doc.toJson(QJsonDocument::Compact);
    m_webSocket.sendTextMessage(doc.toJson(QJsonDocument::Compact));

}

void Backend::to(QString url)
{
    QSslConfiguration sslConfiguration;
    QFile certFile(QStringLiteral("/opt/ssl/lenovo.dotty.su.crt"));
    QFile keyFile(QStringLiteral("/opt/ssl/lenovo.dotty.su.key"));
//    QFile certFile(QStringLiteral(":/lenovo.dotty.su.crt"));
//    QFile keyFile(QStringLiteral(":/lenovo.dotty.su.key"));

    certFile.open(QIODevice::ReadOnly);
    keyFile.open(QIODevice::ReadOnly);

    QSslCertificate certificate(&certFile, QSsl::Pem);
    QSslKey sslKey(&keyFile, QSsl::Rsa, QSsl::Pem);

    certFile.close();
    keyFile.close();

    sslConfiguration.setPeerVerifyMode(QSslSocket::VerifyPeer);
    sslConfiguration.setLocalCertificate(certificate);
    sslConfiguration.setPrivateKey(sslKey);
    sslConfiguration.setProtocol(QSsl::TlsV1SslV3);

    m_webSocket.setSslConfiguration(sslConfiguration);


    qInfo() << "url:" << url;
    QObject::connect(&m_webSocket, &QWebSocket::connected, this, &Backend::onConnected);
    connect(&m_webSocket, &QWebSocket::sslErrors, [=](const QList<QSslError> &errors)
    {
        // Handle error here...
        qDebug() << errors;
        qDebug() << m_webSocket.errorString();
    });
    m_webSocket.open(QUrl(url));

}

void Backend::onConnected()
{
    QObject::connect(&m_webSocket, &QWebSocket::textMessageReceived,
            this, &Backend::onTextMessageReceived);
    QObject::connect(&m_webSocket, &QWebSocket::disconnected,
                     this, &Backend::onDisConnected);

    status = true;
    statusChanged(true);
}

void Backend::onDisConnected()
{
    status = false;
    statusChanged(false);
}

void Backend::onTextMessageReceived(QString message)
{
    qInfo() << "onTextMessageReceived:" << message;
}
