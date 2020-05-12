#include "testws.h"

#include <QJsonObject>

#include <QDebug>
#include <QWebSocket>

TestWs::TestWs()
{

}

bool TestWs::exec(QWebSocket *pClient, QJsonObject data)
{
    qInfo() << "bool TestWs::exec" << data;
    pClient->sendTextMessage("TeSt MsgG))");

    return true;
}
