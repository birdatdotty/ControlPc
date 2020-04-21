#include "testws.h"

#include <QJsonObject>

#include <QDebug>

TestWs::TestWs()
{

}

bool TestWs::exec(QWebSocket *pClient, QJsonObject data)
{
    qInfo() << "bool TestWs::exec" << data;

    return true;
}
