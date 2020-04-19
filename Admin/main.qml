import QtQuick 2.12
import QtQuick.Controls 2.5

import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")


    SwipeView {
        id: swipeView
        interactive: false
        anchors.fill: parent

        Page1Form {
            swipeView: swipeView
        }

        UserAdd {
        }
        Cert {
            Label {text: "12312"}
        }


    }

    Button{
        x: parent.width - 80
        text: 'меню'
        visible: swipeView.currentIndex !== 0
        onClicked: swipeView.setCurrentIndex(0)
    }


}
