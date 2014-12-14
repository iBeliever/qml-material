import QtQuick 2.0
import Material 0.1

Rectangle {
    height: 400
    width: 400
    Column {
        anchors.centerIn: parent
        spacing: units.dp(20)

        Button {
            text: "Simple Button"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Raised Button"
            elevation: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Wide Button"

            width: units.dp(200)
            elevation: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Button with really long text"
            elevation: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Colored button"
            textColor: Theme.accentColor
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
