#ifndef TESTWS_H
#define TESTWS_H

#include "Action.h"

class TestWs : public Action
{
public:
    TestWs();
    bool exec(QWebSocket *pClient, QJsonObject data);
};

#endif // TESTWS_H
