#ifndef WSCLIENT_H
#define WSCLIENT_H

#include <QObject>
#include <QWebSocket>
#include <QSslError>
#include <QList>
#include <QString>
#include <QUrl>

class WSClient : public QObject
{
  Q_OBJECT
  public:
    explicit WSClient(const QUrl &url,
                      QSslConfiguration *sslConfiguration,
                      QObject *parent = nullptr);

  signals:
    void connected();
    void finish();

  protected slots:
    void onConnected();
    void onTextMessageReceived(QString message);
    void onBinaryMessageReceived(QString message);

    void onSslErrors(const QList<QSslError> &errors);

  private:
    QWebSocket m_webSocket;
};

#endif // WSCLIENT_H
