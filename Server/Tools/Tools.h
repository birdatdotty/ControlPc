#ifndef TOOLS_H
#define TOOLS_H

#include <QJsonObject>
#include <QObject>

class Tools: public QObject
{
    Tools(QObject *parent = nullptr);

public:
    static QObject *init();
    bool createUser(QString user);
    bool setUserShell(QString user, QString shell);
    bool setPassword(QString user, QString password);
    bool setSmbPassword(QString user, QString password);
    bool Action(QJsonObject json);
};

#endif // TOOLS_H
