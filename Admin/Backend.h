#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QWebSocket>

class QQmlEngine;
class QJSEngine;

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool status READ getStatus NOTIFY statusChanged)
public:
    explicit Backend(QObject *parent = nullptr);
    bool getStatus() {return status;}

    static QObject *init(QQmlEngine *engine, QJSEngine *scriptEngine);

private:
    QWebSocket m_webSocket;
    bool status;

public slots:
    Q_INVOKABLE void send(QString name, QString password);
    Q_INVOKABLE void to(QString url);

private slots:
    void onConnected();
    void onDisConnected();
    void onTextMessageReceived(QString message);

signals:
    void statusChanged(bool status);
};

#endif // BACKEND_H
