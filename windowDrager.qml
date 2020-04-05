import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0

Rectangle
{
    id:root
    property Window window:null
    color:"green"

    Item
    {
        id:dummyItem//drag.target should be an Item, while a window is not an Item
        Drag.dragType: Drag.Automatic
        Drag.active: mouseArea.drag.active

        onXChanged:
        {
            window.x +=x;
            x=0;
        }
        onYChanged:
        {
            window.y +=y;
            y=0;
        }

    }


    MouseArea
    {
        id: mouseArea
        anchors.fill: parent
        drag.target: dummyItem
    }

    Button
    {
        height: 16
        width:16
        padding: 0
        anchors.rightMargin: 4
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        onClicked:window.close()
        text:"X"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
