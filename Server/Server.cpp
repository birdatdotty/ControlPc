#include "Server.h"

#include "Action.h"

Server::Server(quint16 port, QObject *parent)
    : QObject(parent),
      m_pWebSocketServer(new QWebSocketServer(QStringLiteral("Echo Server"),
                                              QWebSocketServer::NonSecureMode, this))
{
    QSslConfiguration sslConfiguration;
    QFile certFile(QStringLiteral(":/root.fgbu.vmf.crt"));
    QFile keyFile(QStringLiteral(":/root.fgbu.vmf.key"));

    certFile.open(QIODevice::ReadOnly);
    keyFile.open(QIODevice::ReadOnly);

    QSslCertificate certificate(&certFile, QSsl::Pem);
    QSslKey sslKey(&keyFile, QSsl::Rsa, QSsl::Pem);

    certFile.close();
    keyFile.close();

    sslConfiguration.setPeerVerifyMode(QSslSocket::VerifyNone);
    sslConfiguration.setLocalCertificate(certificate);
    sslConfiguration.setPrivateKey(sslKey);
    sslConfiguration.setProtocol(QSsl::TlsV1SslV3);

    m_pWebSocketServer->setSslConfiguration(sslConfiguration);

    if (m_pWebSocketServer->listen(QHostAddress::Any, port)) {
        connect(m_pWebSocketServer, &QWebSocketServer::newConnection,
                this, &Server::onNewConnection);
        connect(m_pWebSocketServer, &QWebSocketServer::closed, this, &Server::closed);
    }
}

bool Server::regAction(QString action_name, Action *action)
{
    if (actions.contains(action_name))
        return false;

    actions[action_name] = action;

    return true;
}

Server::~Server()
{
    qDeleteAll(m_clients.begin(), m_clients.end());
}

void Server::onNewConnection()
{
    QWebSocket *pSocket = m_pWebSocketServer->nextPendingConnection();

    connect(pSocket, &QWebSocket::textMessageReceived,
            this, &Server::processTextMessage);

    connect(pSocket, &QWebSocket::binaryMessageReceived,
            this, &Server::processBinaryMessage);

    connect(pSocket, &QWebSocket::disconnected, this,
            &Server::socketDisconnected);

    m_clients << pSocket;
}

void Server::processTextMessage(QString message)
{
    QWebSocket *pClient = qobject_cast<QWebSocket *>(sender());
    if (pClient) {
        qDebug() << "Message received:" << message;
        QJsonDocument doc = QJsonDocument::fromJson(message.toUtf8());
        QJsonObject obj = doc.object();

        QString action_name = obj["action"].toString("NONE");

        if (actions.contains(action_name))
            actions[action_name]->exec(pClient, obj["data"].toObject());
        else
            pClient->sendTextMessage("fail pase json");
    }
}

void Server::processBinaryMessage(QByteArray message)
{

}

void Server::socketDisconnected()
{
    QWebSocket *pClient = qobject_cast<QWebSocket *>(sender());
    qDebug() << "socketDisconnected:" << pClient;
    if (pClient) {
        m_clients.removeAll(pClient);
        pClient->deleteLater();
    }
}

#include <QJsonDocument>
#include <QJsonObject>

#include <UserDb/UserDb.h>

#include <Tools/Tools.h>
void Server::executeJson(QString jsonStr)
{
    QJsonDocument doc = QJsonDocument::fromJson(jsonStr.toUtf8());
    QJsonObject obj = doc.object();
    QObject* tmp_tools = Tools::init();
    Tools* tools = dynamic_cast<Tools*>(tmp_tools);
    tools->Action(obj);

    qInfo() << obj;
}
