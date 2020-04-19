#ifndef SERVER_H
#define SERVER_H

#include <QObject>
#include <QtWebSockets>

class Action;

class Server : public QObject
{
    Q_OBJECT
public:
    explicit Server(quint16 port, QObject *parent = nullptr);
    bool regAction(QString action_name, Action* action);
    ~Server();

signals:
    void closed();

private slots:
    void onNewConnection();
    void processTextMessage(QString message);
    void processBinaryMessage(QByteArray message);
    void socketDisconnected();

    void executeJson(QString jsonStr);

private:
    QWebSocketServer *m_pWebSocketServer;
    QList<QWebSocket *> m_clients;
    QMap<QString,Action*> actions;
};

#endif // SERVER_H
