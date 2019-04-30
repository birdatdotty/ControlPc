#include "WSClient.h"

WSClient::WSClient(const QUrl &url,
                   QSslConfiguration *sslConfiguration,
                   QObject *parent)
  : QObject(parent)
{
  connect(&m_webSocket, &QWebSocket::connected, this, &WSClient::onConnected);
  connect(&m_webSocket, QOverload<const QList<QSslError>&>::of(&QWebSocket::sslErrors),
          this, &WSClient::onSslErrors);

  m_webSocket.setSslConfiguration(*sslConfiguration);
  m_webSocket.open(QUrl(url));
}

