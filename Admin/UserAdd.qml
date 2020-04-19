import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import Backend 1.0

Page {
    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    ColumnLayout {
        RowLayout {
            Label {
                text: qsTr("login:")
            }
            TextField {
                id: login

            }
        }

        RowLayout {
            Label {
                text: qsTr("password:")
            }
            TextField {
                id: password
                text: "Qwerty123"
            }
        }
        Button {
            enabled: login.text.length > 0
            text: "OK"
            onClicked: Backend.send(login.text, password.text)
        }
        TabButton {
            text: "!!!!!!!!!!!!!!!!"
        }

    }
}
