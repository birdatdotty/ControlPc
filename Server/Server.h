#ifndef SERVER_H
#define SERVER_H

#include <QObject>
#include <QtWebSockets>
#include <qtservice.h>

class Action;

class Server : public QObject
{
    Q_OBJECT
public:
    explicit Server(quint16 port, QObject *parent = nullptr);
    bool regAction(QString action_name, Action* action);
    ~Server();

    void start();
    void stop();
    void createApplication(int &argc, char **argv);

    void setCrtFile(QString newCrtFile);
    void setKeyFile(QString newKeyFile);

    static Server* init();

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
    quint16 m_port;

    QString crtFilePath,
            keyFilePath;
};

#endif // SERVER_H
