#ifndef WSSERVER_H
#define WSSERVER_H

#include <QObject>
#include <QSslConfiguration>
#include <QWebSocketServer>
#include <QWebSocket>

class WSServer : public QObject
{
  Q_OBJECT
public:
  explicit WSServer(quint16 port,
                    QSslConfiguration *sslConfiguration = nullptr,
                    QObject *parent = nullptr);

  ~WSServer() override;

signals:

private slots:
  void onNewConnection();
  virtual void processTextMessage(QString message);
  virtual void processBinaryMessage(QByteArray message);
  void socketDisconnected();
  void onSslErrors(const QList<QSslError> &errors);

private:
  QWebSocketServer *m_pWebSocketServer;
  QList<QWebSocket *> m_clients;
};

#endif // WSSERVER_H
