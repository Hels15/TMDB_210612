
import QtQuick 2.0
import QtQuick.Layouts
import "Widgets"
Rectangle {
    radius: 5
    border.color: Qt.rgba(0, 0, 0, 0.1)

    ColumnLayout{
        anchors.fill: parent
        spacing: 0

        Item{
            id: poster_rect

            Layout.fillWidth: true
            Layout.fillHeight: true

            Image{
               source: Resources.get_image("poster.jpg")
               sourceSize: Qt.size(poster_rect.width - 5,poster_rect.height - 5)
               anchors.horizontalCenter: parent
               anchors.topMargin: 5
               anchors.top: parent.top
               anchors.left: parent.left
               anchors.leftMargin: 3
            }
        }   PopularityProgress{
                x:5

                anchors.bottom: parent.botton
                percentage: 60
        }

        Item{
            id: title_container

            Layout.fillWidth: true
            implicitHeight: 70
            ColumnLayout{
                anchors.fill: parent
            Text{
                text: "Black Window"
                font.pixelSize: 16
                font.bold: true

            }
            Text{
                text: "Jul 07, 2021"
                color: "#888888"
                font.pixelSize: 16

            }


            }
        }
    }

    MouseArea{
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

    }
}
