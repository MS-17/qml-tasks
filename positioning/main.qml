import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: baseWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("App")

    Tile {
        id: grass
        width: parent.width
        height: 100
        tileColor: "green"
        anchors.bottom: parent.bottom
    }

    Rectangle {
        id:house
        anchors.bottom: grass.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: 500
        height: 200
        //color: "red"
        //border.color: "black"

        Tile {
            id: left_wall
            anchors.left: parent.left
            height: parent.height
            width: 10
            tileColor: "#AE8A69"
        }

        Tile {
            id: right_wall
            anchors.right: parent.right
            height: parent.height
            width: 10
            tileColor: "#AE8A69"
        }


        Tile {
            id: ceiling
            anchors.top: parent.top
            width: parent.width
            height: 10
            tileColor: "#AE8A69"
        }

        Tile {
            id: floor
            anchors.bottom: parent.bottom
            width: parent.width
            height: 10
            tileColor: "#AE8A69"
        }
        Tile {
            id: door
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            tileColor: "#AE8A69"
            width: parent.width/6
            height: parent.height/2
        }

        Tile {
            id: left_front_window
            anchors.right: door.left
            tileColor: "lightblue"
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width/5
            height: parent.height-100
        }

        Tile {
            id: right_front_window
            anchors.left: door.right
            tileColor: "lightblue"
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width/5
            height: parent.height-100
        }
    }

    Rectangle{
        id: roof
        anchors.bottom: house.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: house.width+10
        height: 100
        //color: "red"
        //border.color: "black"

        Tile{
            id: left_roof_side
            tileColor: "#AE8A69"
            width: 272
            height: 10
            anchors.bottomMargin: -10
            anchors.bottom: parent.bottom
            transform: Rotation {
                angle: -22
            }

        }

        Tile{
            id: right_roof_side
            tileColor: "#AE8A69"
            width: 280
            height: 10
            anchors.rightMargin: -23
            y:-3
            anchors.right: parent.right
            transform: Rotation {
                angle: 22
            }

        }
    }

    Tile {
        id: sun
        width: 100
        height: 100
        tileRadius: 180
        tileColor: "yellow"
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 20
    }

}








