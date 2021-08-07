import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import "Components"


Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("TMDB")

    ColumnLayout{
        anchors.fill: parent
        spacing: 0



        Navbar{
            Layout.fillWidth: true
            implicitHeight: 64
        }


        // Search and Move list Layout
        RowLayout{
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            SearchBar{
                Layout.fillHeight: true
                implicitWidth: 200

            }
            //movie List
            MovieList{
                Layout.fillHeight: true
                Layout.fillWidth: true

            }

        }
    }
}
