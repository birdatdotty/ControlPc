#include "WSServer.h"

#include <QDataStream>
#include <QFile>

void WSServer::processBinaryMessage(QByteArray message)
{
    QWebSocket *pClient = qobject_cast<QWebSocket *>(sender());
    if (pClient)
    {
        qInfo() << "void WSServer::processBinaryMessage(QByteArray message)";
//        pClient->sendBinaryMessage(message);
        QFile file ("/tmp/message.png");
        if (file.open(QIODevice::WriteOnly))
          {
            file.write(message);

//            QDataStream out(&file);
//            out.setVersion(QDataStream::Qt_5_12);
//            out << message;
          }

    }
}
