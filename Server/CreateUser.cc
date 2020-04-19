#include "CreateUser.h"

#include <QDebug>
#include <QJsonObject>
#include <QWebSocket>

#include "Tools/Tools.h"
#include "UserDb/UserDb.h"

CreateUser::CreateUser()
{

}

bool CreateUser::exec(QWebSocket */*pClient*/, QJsonObject data)
{
    qInfo() << "bool CreateUser::exec(QWebSocket *pClient, QJsonObject data)";
    QObject* tmp_tools = Tools::init();
    QObject* tmp_userdb = UserDb::init();
    Tools* tools = dynamic_cast<Tools*>(tmp_tools);
    UserDb* userdb = dynamic_cast<UserDb*>(tmp_userdb);
//    tools->Action(data);
    QString name = data["name"].toString();
    QString password = data["password"].toString();


    userdb->open("/tmp/db_name.sqlite");
    userdb->add(name, password);
    tools->createUser(name);
    tools->setUserShell(name, "/bin/bash");
    tools->setPassword(name, password);
    tools->setSmbPassword(name, password);


    qInfo() << data;


    return true;
}
