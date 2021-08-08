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


        Image{
            source: Resources.get_image("refresh.svg")
            sourceSize: Qt.size(30,30)


        }




    }
}
