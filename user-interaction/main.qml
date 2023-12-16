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
                        Layout.alignment: Qt.AlignCenter
                        color: header_row_layout_container.color
                        Text {
                            id: header_item1_text
                            text: "Header"
                            anchors.centerIn: parent
                        }
                    }

                    /*Rectangle {
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
                    }*/
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
                id: content_text
                anchors.centerIn: parent
                color: content.color
                Text {
                    id: content_text_text1
                    text: "Content"
                    anchors.centerIn: parent
                }
            }
        }

        Rectangle {
            id: footer
            Layout.alignment: Qt.AlignBottom
            Layout.fillWidth: true
            Layout.minimumHeight: main_window.height / 5
            color: "#e9e9e9"

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
                        text: "Item 1"
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: footer_item1_mouse_area
                        anchors.fill: footer_item1
                        hoverEnabled: true
                        /*onEntered: {
                            footer_item1.color="lightgray";
                            //footer_item1.border.color="black";
                            //footer_item1.border.width=1;
                        }
                        onExited: {
                            footer_item1.color="gray";
                        }*/
                        onClicked: {
                            footer_item1.color="gray"
                            footer_item2.color="lightgray"
                            footer_item3.color="lightgray"
                            content_text_text1.text="You chose item1"
                            header_item1_text.text="Header 1"
                        }
                    }

                }
                Rectangle {
                    id: footer_item2
                    color: "gray"
                    Layout.fillHeight: true
                    Layout.minimumWidth: footer.width / 3

                    Text {
                        text: "Item 2"
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: footer_item2_mouse_area
                        anchors.fill: footer_item2
                        hoverEnabled: true
                        onClicked: {
                            footer_item2.color="gray"
                            footer_item1.color="lightgray"
                            footer_item3.color="lightgray"
                            content_text_text1.text="You chose item2"
                            header_item1_text.text="Header 2"
                        }
                    }
                }
                Rectangle {
                    id: footer_item3
                    color: "gray"
                    Layout.fillHeight: true
                    Layout.minimumWidth: footer.width / 3
                    Text {
                        text: "Item 3"
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: footer_item3_mouse_area
                        anchors.fill: footer_item3
                        hoverEnabled: true
                        onClicked: {
                            footer_item3.color="gray"
                            footer_item1.color="lightgray"
                            footer_item2.color="lightgray"
                            content_text_text1.text="You chose item3"
                            header_item1_text.text="Header 3"
                        }
                    }
                }
            }
        }
    }
}

