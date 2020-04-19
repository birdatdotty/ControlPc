// https://stackoverflow.com/questions/6597659/qt-sqlite-select-statement
// https://habr.com/ru/post/128836/

#include "UserDb.h"

#include <QtSql>


UserDb::UserDb(QObject *parent)
  : QObject(parent),
    openned(false)
{

}

QObject* UserDb::init()
{
    static UserDb* db = new UserDb;

    return db;
}

QString UserDb::pass(QString user)
{
    if (openned) {
        QSqlQuery my_query;

        my_query.prepare("SELECT password from users where name = :curName;");
        my_query.bindValue(":curName", user);

        if (my_query.exec()){
            my_query.next();
            if (my_query.isValid())
                return my_query.value(0).toString();
        }
    }

    return "ERROR";
}

bool UserDb::open(QString file)
{
    QSqlDatabase sdb = QSqlDatabase::addDatabase("QSQLITE");
    sdb.setDatabaseName(file);
    if (!sdb.open()) return false;

    QSqlQuery queryCreate("CREATE TABLE IF NOT EXISTS users ("
                          "id integer PRIMARY KEY,"
                          "name text NOT NULL UNIQUE,"
                          "password text);");

    openned = queryCreate.exec();
    return openned;
}

bool UserDb::add(QString user, QString pass)
{
    if (openned) {
        QSqlQuery my_query;
        my_query.prepare("INSERT INTO users (name, password)"
                         "VALUES (:name, :password);");

        my_query.bindValue(":name", user);
        my_query.bindValue(":password", pass);

        return my_query.exec();
    }
    return false;
}

bool UserDb::setPassword(QString user, QString pass)
{
    if (openned) {
        QSqlQuery my_query;
        my_query.prepare("UPDATE users SET password = :newPassword WHERE name = :curName;");

        my_query.bindValue(":curName", user);
        my_query.bindValue(":newPassword", pass);

        return my_query.exec();
    }
    return false;
}
