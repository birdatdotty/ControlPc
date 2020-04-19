#ifndef CREATEUSER_H
#define CREATEUSER_H

#include "Action.h"

class CreateUser: public Action
{
public:
    CreateUser();
    bool exec(QWebSocket *pClient, QJsonObject data);
};

#endif // CREATEUSER_H
