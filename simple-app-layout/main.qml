import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    width: 360
    height: 600
    visible: true
    title: qsTr("App")
    id: main_window

    ColumnLayout {

        id: column_base_flow
        anchors.fill: parent
        spacing: 10

        Rectangle {
            id: header
            Layout.alignment: Qt.AlignTop
            Layout.fillWidth: true
            Layout.minimumHeight: main_window.height / 8
            color: "lightgray"
            Rectangle {
                id: header_row_layout_container
                height: parent.height * 0.75
                width: parent.width * 0.75
                anchors.centerIn: parent
                color: "lightgray"
                RowLayout {
                    id: header_items
                    anchors.fill: parent
                    spacing: 5

                    Rectangle {
                        id: header_item1
                        Layout.fillHeight: true
                        Layout.minimumWidth: header_row_layout_container.width / 3
                        color: "gray"
                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        id: header_item2
                        color: "gray"
                        Layout.fillHeight: true
                        Layout.minimumWidth: header_row_layout_container.width / 3

                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        id: header_item3
                        color: "gray"
                        Layout.fillHeight: true
                        Layout.minimumWidth: header_row_layout_container.width / 3
                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }

        Rectangle {
            id: content
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "lightgray"
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Rectangle {
                id: content_grid_layout_container
                anchors.fill: parent

                GridLayout {
                    id: grid_content
                    anchors.fill: parent
                    rows: 2
                    columns: 3
                    Rectangle {
                        id: content_item1
                        color: "gray"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.row: 1
                        Layout.column: 1
                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        id: conent_item2
                        color: "gray"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.row: 1
                        Layout.column: 2
                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        id: content_item3
                        color: "gray"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.row: 2
                        Layout.column: 1
                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        id: content_item4
                        color: "gray"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.row: 2
                        Layout.column: 2
                        Text {
                            text: "Text"
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }

        Rectangle {
            id: footer
            Layout.alignment: Qt.AlignBottom
            Layout.fillWidth: true
            Layout.minimumHeight: main_window.height / 5
            color: "lightgray"

            RowLayout {
                id: footer_items
                anchors.fill: parent
                spacing: 5

                Rectangle {
                    id: footer_item1
                    Layout.fillHeight: true
                    Layout.minimumWidth: footer.width / 3
                    color: "gray"
                    Text {
                        text: "Text"
                        anchors.centerIn: parent
                    }
                }
                Rectangle {
                    id: footer_item2
                    color: "gray"
                    Layout.fillHeight: true
                    Layout.minimumWidth: footer.width / 3

                    Text {
                        text: "Text"
                        anchors.centerIn: parent
                    }
                }
                Rectangle {
                    id: footer_item3
                    color: "gray"
                    Layout.fillHeight: true
                    Layout.minimumWidth: footer.width / 3
                    Text {
                        text: "Text"
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
