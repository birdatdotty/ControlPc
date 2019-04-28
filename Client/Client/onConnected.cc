#include "WSClient.h"

void WSClient::onConnected()
{
  connect(&m_webSocket, &QWebSocket::textMessageReceived,
          this, &WSClient::onTextMessageReceived);

  connect(&m_webSocket, &QWebSocket::binaryMessageReceived,
          this, &WSClient::onBinaryMessageReceived);

  // send text message:
//  m_webSocket.sendTextMessage(QStringLiteral("Hello, world!"));
  // send sendBinary message:
  // m_webSocket.sendBinaryMessage
}

