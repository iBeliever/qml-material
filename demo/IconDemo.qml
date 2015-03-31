import QtQuick 2.0
import Material 0.1
import Material.Extras 0.1

Item {
    AwesomeIcon {
        id: icon
        visible: false
    }

    Flickable {
        id: flickable

        anchors.fill: parent
        contentHeight: content.height
        contentWidth: width

        Item {
            id: content
            width: flickable.width
            height: grid.implicitHeight + grid.anchors.margins * 2

            Grid {
                id: grid
                anchors {
                    fill: parent
                    margins: Units.dp(20)
                }

                rowSpacing: Units.dp(10)
                columns: Math.floor(width/Units.dp(180))

                Repeater {
                    model: ListUtils.objectKeys(icon.icons)
                    delegate: Row {
                        spacing: Units.dp(20)
                        width: grid.width/grid.columns

                        Icon {
                            name: "awesome/" + modelData
                            anchors.verticalCenter: parent.verticalCenter
                        }

                        Label {
                            text: modelData
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }
        }
    }

    Scrollbar {
        flickableItem: flickable
    }
}

