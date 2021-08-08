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
        id: main_layout
        anchors.fill: parent
        state: "list"



        Navbar{
            Layout.fillWidth: true
            implicitHeight: 64
        }

        states: [
            State {
                name: "details"
                PropertyChanges {
                    target: movie_details
                    visible: true

                }

            },
            State {
                name: "list"
                PropertyChanges {
                    target: movie_list_layout
                    visible: true

                }

            }
        ]




        // Search and Move list Layout

        RowLayout{
            id: movie_list_layout
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: false
            SearchBar{
                id: search_bar
                Layout.fillHeight: true
                implicitWidth: 200

            }
            //movie List
            MovieList{
                id: movie_list
                Layout.fillHeight: true
                Layout.fillWidth: true

            }

        }

        MovieDetails{
            id: movie_details
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: false

        }
    }
}
