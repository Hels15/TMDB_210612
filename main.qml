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

        // navbar
        Navbar{
            id:navbar
            Layout.fillWidth: true
            implicitHeight: 64
            state: "gridview"

            states: [
                State {
                    name: "listview"
                    PropertyChanges {
                        target: movie_listview
                        visible: true
                    }
                },
                State {
                    name: "gridview"
                    PropertyChanges {
                        target: movie_gridview
                        visible: true
                    }
                }
            ]
        }

        // Search and Movie list layout
        RowLayout{
            id: movie_list_layout
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: false

            // search SearchBar
            SearchBar{
                id: search_bar
                Layout.fillHeight: true
                implicitWidth: 200
            }

            // movie List
            MovieListGrid{
                id: movie_gridview
                Layout.fillHeight: true
                Layout.fillWidth: true
                visible: false
            }


            MovieList{
                id: movie_listview
                Layout.fillHeight: true
                Layout.fillWidth: true
                visible: false
            }

        }

        MovieDetails{
            id: movie_details
            visible: false
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
