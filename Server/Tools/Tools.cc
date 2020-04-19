#include "Tools.h"
#include <stdlib.h>

#include <QProcess>

Tools::Tools(QObject* parent)
    : QObject(parent)
{

}

QObject *Tools::init()
{
    static Tools* tools = new Tools;
    return tools;
}

bool Tools::createUser(QString user)
{
    QString cmd = "sudo useradd -m " + user;
    const char *command = cmd.toUtf8();
    int ret = system(command);

    return (ret == 0);
}

bool Tools::setUserShell(QString user, QString shell)
{
    QString chsh = "sudo chsh -s %1 %2";
    system(chsh.arg(shell).arg(user).toUtf8());

    return true;
}

bool Tools::setPassword(QString user, QString password)
{
    QProcess echo;
    QProcess chpasswd;
    echo.setStandardOutputProcess(&chpasswd);
    chpasswd.setProcessChannelMode(QProcess::ForwardedChannels);

    QString echo_cmd = "echo %1:%2";

    QString chpasswd_cmd = "sudo chpasswd";

    echo.start(echo_cmd.arg(user).arg(password));
    chpasswd.start(chpasswd_cmd);

    echo.waitForStarted();
    chpasswd.waitForFinished();
    echo.waitForFinished();

    return (chpasswd.exitCode() == 0);
}

#include<QDebug>

#include <UserDb/UserDb.h>
bool Tools::setSmbPassword(QString user, QString password)
{
    QProcess echo;
    QProcess chpasswd;

    QString echo_cmd = "echo -ne \"%1\n%1\n\"";
    QString chpasswd_cmd = "sudo smbpasswd -a -s %1";

    //    echo -ne "$PASS\n$PASS\n" | smbpasswd -a -s $LOGIN
    echo.setStandardOutputProcess(&chpasswd);
    chpasswd.setProcessChannelMode(QProcess::ForwardedChannels);

    echo.start(echo_cmd.arg(password));
    chpasswd.start(chpasswd_cmd.arg(user));

    echo.waitForStarted();
    chpasswd.waitForFinished();
    echo.waitForFinished();

    return (chpasswd.exitCode() == 0);
}

bool Tools::Action(QJsonObject json)
{
    if (json["action"].toString() == "create user") {
        QString name = json["name"].toString();
        QString password = json["password"].toString();


        QObject* tmp_db = UserDb::init();

        UserDb* db = dynamic_cast<UserDb*>(tmp_db);

        db->open("/tmp/db_name.sqlite");

        qInfo() << __LINE__ << db->setPassword(name, password);
        qInfo() << __LINE__ << createUser(name);
        qInfo() << __LINE__ << setPassword(name, password);
        qInfo() << __LINE__ << setSmbPassword(name, password);

    }

    return true;
}
