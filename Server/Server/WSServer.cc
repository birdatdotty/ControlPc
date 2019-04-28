#include "WSServer.h"

WSServer::WSServer(quint16 port,
                   QSslConfiguration *sslConfiguration,
                   QObject *parent)
  : QObject(parent)
{
  if (sslConfiguration == nullptr)
    {
      m_pWebSocketServer = new QWebSocketServer(QStringLiteral("SSL Echo Server"),
                                                QWebSocketServer::NonSecureMode,
                                                this);
      if (m_pWebSocketServer->listen(QHostAddress::Any, port))
      {
          qInfo() << __LINE__ << "Echo Server listening on port" << port;
          connect(m_pWebSocketServer, &QWebSocketServer::newConnection,
                  this, &WSServer::onNewConnection);
      }

    }
  else
    {
      m_pWebSocketServer = new QWebSocketServer(QStringLiteral("SSL Echo Server"),
                                                QWebSocketServer::SecureMode,
                                                this);

      m_pWebSocketServer->setSslConfiguration(*sslConfiguration);
      if (m_pWebSocketServer->listen(QHostAddress::Any, port))
      {
          qInfo() << __LINE__ << "SSL Echo Server listening on port" << port;
          connect(m_pWebSocketServer, &QWebSocketServer::newConnection,
                  this, &WSServer::onNewConnection);
      }
    }


}

WSServer::~WSServer()
{
  m_pWebSocketServer->close();
  qDeleteAll(m_clients.begin(), m_clients.end());
}


////////////////////////////////////////////////
void WSServer::onNewConnection()
{
    QWebSocket *pSocket = m_pWebSocketServer->nextPendingConnection();

    connect(pSocket, &QWebSocket::textMessageReceived,
            this, &WSServer::processTextMessage);

    connect(pSocket, &QWebSocket::binaryMessageReceived,
            this, &WSServer::processBinaryMessage);

    connect(pSocket, &QWebSocket::disconnected,
            this, &WSServer::socketDisconnected);

    m_clients << pSocket;
}

void WSServer::socketDisconnected()
{
    qInfo() << __LINE__ << "Client disconnected";
    QWebSocket *pClient = qobject_cast<QWebSocket *>(sender());
    if (pClient)
    {
        m_clients.removeAll(pClient);
        pClient->deleteLater();
    }
}

void WSServer::onSslErrors(const QList<QSslError> &)
{
    qInfo() << __LINE__ << "Ssl errors occurred";
}
