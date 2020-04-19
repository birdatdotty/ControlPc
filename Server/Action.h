#ifndef ACTION_H
#define ACTION_H

#include <QString>

class QJsonObject;
class QWebSocket;

class Action
{
public:
    Action();
    virtual ~Action();
    QString getAction();
    virtual bool exec(QWebSocket *pClient, QJsonObject data);

private:
    QString name;

};

#endif // ACTION_H
