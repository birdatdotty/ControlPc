import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import Backend 1.0

Page {
    property var swipeView

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    ColumnLayout {
        Button {
            enabled: !Backend.status
            text: "подключится"
            onClicked: Backend.to("ws://lenovo.dotty.su:8888")
        }

        Button {
            text: "Добавить пользователя"
            onClicked: swipeView.setCurrentIndex(1)
        }
        Button {
            text: "Создать сертификат"
            onClicked: swipeView.setCurrentIndex(2)
        }

    }
}
