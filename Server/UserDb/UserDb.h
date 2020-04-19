#ifndef USERDB_H
#define USERDB_H

#include <QObject>

class UserDb : public QObject
{
    Q_OBJECT
public:
    explicit UserDb(QObject *parent = nullptr);
    static QObject* init();

    QString pass(QString user);
    bool open(QString file);
    bool add(QString user, QString pass);
    bool setPassword(QString user, QString pass);

private:
    bool openned;

signals:

};

#endif // USERDB_H
