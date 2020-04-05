import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0

Window {
    id:window1
    visible: true
    width: 300
    height: 200
    x:400
    y:400
    title: qsTr("Hello World")


    Rectangle
    {
        anchors.fill: parent
        color:dropArea.containsDrag? "green" : "gray"
        DropArea
        {
            id:dropArea
            anchors.fill: parent
        }

        Text{
            anchors.fill: parent
            text:"Window1"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }

    Window
    {
        id:window2
        visible: true
        width: 200
        height: 100
        y:400
        x:100

        flags: Qt.FramelessWindowHint


        Page
        {
            anchors.fill: parent

            header:WindowDrager
            {
                height:24
                window:window2
            }

            contentItem: Rectangle{
                color:"yellow"
                Text{
                    anchors.fill: parent
                    text:"Window2"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

            }
        }

    }


}
