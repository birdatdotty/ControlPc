#include "Server.h"

#include "Action.h"

void append_log(QString file, QString msg, QString type = "something") {
  QFile f(file);
  if (f.open(QIODevice::WriteOnly | QIODevice::Append)) {
    QTextStream stream( &f );
    stream << type << ": " << msg << "\r\n";
  }
}

void test22() {
    QFile f22("C:\\log\\22.txt");
    append_log("c:\\log\\log.txt", f22.readAll(), "22");
}

Server::Server(quint16 port, QObject *parent)
    : QObject(parent),
      m_port(port)
{
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

void Server::start()
{
	test22();
    m_pWebSocketServer =
            new QWebSocketServer(QStringLiteral("UserBdServer"),
                                 QWebSocketServer::SecureMode, this);

    QSslConfiguration sslConfiguration = QSslConfiguration::defaultConfiguration();
    QFile certFile(crtFilePath);
    QFile keyFile(keyFilePath);

    if (!certFile.open(QIODevice::ReadOnly))
        append_log("c:/log/log.txt", crtFilePath, "error open file");
    if (!keyFile.open(QIODevice::ReadOnly))
        append_log("c:/log/log.txt", keyFilePath, "error open file");

    QSslCertificate certificate(&certFile, QSsl::Pem);
    QSslKey sslKey(&keyFile, QSsl::Rsa, QSsl::Pem);


    append_log("c:/log/log.txt", "void Server::start()", "info");
    append_log("c:/log/log.txt", certFile.readAll(), crtFilePath);
    append_log("c:/log/log.txt", keyFile.readAll(), keyFilePath);

    QList<QSslError> errors = QSslCertificate::verify(QList<QSslCertificate>() << certificate);
    if (errors.size() == 0) {
        qInfo() << "certificate valid!";
	append_log("c:/log/log.txt", "certificate valid!");
    }
    else {
        qInfo() << errors;
        for (QSslError error: errors)
            append_log("c:/log/log.txt", error.errorString());
    }


    certFile.close();
    keyFile.close();

//    sslConfiguration.setPeerVerifyMode(QSslSocket::VerifyPeer);
    sslConfiguration.setPeerVerifyMode(QSslSocket::VerifyNone);
    sslConfiguration.setLocalCertificate(certificate);
    sslConfiguration.setPrivateKey(sslKey);
    sslConfiguration.setProtocol(QSsl::TlsV1SslV3);

    m_pWebSocketServer->setSslConfiguration(sslConfiguration);

    if (m_pWebSocketServer->listen(QHostAddress::Any, m_port)) {
        connect(m_pWebSocketServer, &QWebSocketServer::newConnection,
                this, &Server::onNewConnection);
        connect(m_pWebSocketServer, &QWebSocketServer::closed, this, &Server::closed);
        connect(m_pWebSocketServer, &QWebSocketServer::sslErrors, [=](const QList<QSslError> &errors)
        {
            // Handle error here...
            qDebug() << __LINE__ << errors;
            qDebug() << __LINE__ << m_pWebSocketServer->errorString();
        });
    }

}

void Server::setCrtFile(QString newCrtFile) {
    crtFilePath = newCrtFile;
}

void Server::setKeyFile(QString newKeyFile) {
    keyFilePath = newKeyFile;
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
