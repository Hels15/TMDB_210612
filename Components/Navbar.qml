import QtQuick 2.0
import QtQuick.Layouts 1.0
import "Widgets"
Rectangle {
    color: "#032541"
    RowLayout{
        anchors.fill:parent
        anchors.margins: 10


        //Logo
        Image{
            source: Resources.get_image("logo.svg")
            Layout.rightMargin:20

            MouseArea{
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: main_layout.state = "list"

            }
        }


        // nav menu
        Repeater{
           model: ["Movies", "TV Shows", "People", "More"]

           TextLink{
               link_text: modelData
               Layout.rightMargin: 10

           }

        //refresh button
        }
        Item{
            Layout.fillWidth: true


        }


        IconButton{
            icon: Resources.get_image("gridview.svg")
            size: 40
            visible: navbar.state === "listview"

            onClicked: navbar.state = "gridview"
        }
        IconButton{
            icon: Resources.get_image("listview.svg")
            onClicked: navbar.state = "listview"
            visible: navbar.state === "gridview"
        }
        IconButton{
            icon: Resources.get_image("refresh.svg")
            onClicked: print("refreshview  clicked")

        }




    }
}
