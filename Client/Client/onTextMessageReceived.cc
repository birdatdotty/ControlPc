#include "WSClient.h"

void WSClient::onTextMessageReceived(QString message)
{
  qInfo() << "Message received:" << message;

  // signal for finish connection:
   finish();
}
