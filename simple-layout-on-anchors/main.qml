import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15


Window {
    id: main_window
    width: 360
    height: 600
    visible: true
    title: qsTr("App")

    Rectangle {
        id: header
        width: parent.width
        height: parent.height/8
        color: "lightgray"

        Text {
            id: header_text
            anchors.centerIn: parent
            text: "Header"
        }
    }

    Rectangle {
        id: main
        border.color: "black"
        width: parent.width

        anchors.top: header.bottom
        anchors.bottom: footer.top

        anchors.left: parent.left
        anchors.right: parent.right

        anchors.margins: 10

        Text {
            id: main_text
            anchors.centerIn: parent
            text: "Content"
        }
    }

    Rectangle {
        id: footer
        height: parent.height/6
        width: parent.width
        color: "lightgray"

        anchors.bottom: parent.bottom

        Rectangle {
            id: footer_1
            height: parent.height
            width: (parent.width-10)/3
            color: "gray"

            anchors.left: parent.left

            Text {
                id: footer_1_text
                anchors.centerIn: parent
                text: "1"
            }

        }

        Rectangle {
            id: footer_2
            height: parent.height
            width: (parent.width-10)/3
            color: "gray"

            anchors.left: footer_1.right
            anchors.right: footer_3.left

            anchors.leftMargin: 5
            anchors.rightMargin: 5

            Text {
                id: footer_2_text
                anchors.centerIn: parent
                text: "2"
            }


        }

        Rectangle {
            id: footer_3
            anchors.right: parent.right
            height: parent.height
            width: (parent.width-10)/3
            color: "gray"

            Text {
                id: footer_3_text
                anchors.centerIn: parent
                text: "3"
            }

        }
    }
}

