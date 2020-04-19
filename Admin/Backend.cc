#include "Backend.h"

#include <QJsonDocument>
#include <QJsonObject>

#include <QQmlEngine>
#include <QJSEngine>

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
    msg["action"] = "create user";
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
    qInfo() << "url:" << url;
    QObject::connect(&m_webSocket, &QWebSocket::connected, this, &Backend::onConnected);
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
