import QtQuick 2.15

Item {
    property alias tileColor: base_tile.color
    property alias tileRadius: base_tile.radius
    Rectangle{
        id: base_tile
        anchors.fill: parent
    }
}
