
import QtQuick 2.0
import QtQuick.Layouts
import "Widgets"
Rectangle {
    id: root

    property string movie_title: "BlackWidow"
    property string movie_date: ""
    property int movie_rating: 0
    property string movie_id: ""
    property string movie_poster: ""
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
               source: root.movie_poster
               sourceSize: Qt.size(poster_rect.width - 5,poster_rect.height - 5)
               anchors.horizontalCenter: parent
               anchors.topMargin: 5
               anchors.top: parent.top
               anchors.left: parent.left
               anchors.leftMargin: 3
            }
               PopularityProgress{
                    x:5

                    anchors.bottom: parent.bottom
                    percentage: root.movie_rating
            }
        }

        Item{
            id: title_container

            Layout.fillWidth: true
            implicitHeight: 70
            ColumnLayout{
                anchors.fill: parent
            Text{
                text: root.movie_title
                font.pixelSize: 16
                font.bold: true

            }
            Text{
                text: root.movie_date
                color: "#888888"
                font.pixelSize: 16

            }


            }
        }
    }

    MouseArea{
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            main_layout.state = "details"
            MovieDetailsModel.set_movie(root.movie_id)


        }
    }
}
