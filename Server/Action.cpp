#include "Action.h"

#include <QDebug>
#include <QJsonObject>
#include <QWebSocket>


Action::Action()
{

}

Action::~Action()
{
    qInfo() << "Action::~Action";
}

QString Action::getAction() {
    return name;
}

bool Action::exec(QWebSocket *pClient, QJsonObject data)
{
    qInfo() << "data:" << data;

    return true;
}
