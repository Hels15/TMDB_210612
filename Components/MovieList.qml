import QtQuick 2.0
import QtQuick.Layouts
Item{

    ListModel {
        id:movie_list
        ListElement {
            movie_id: 12
            title: "Black Widow"
            poster: "test"
            date: "2021-07-07"
            rating: 75


        }

        ListElement {
            movie_id: 13
            title: "Jungle_Cruise"
            poster: "test2"
            date: "2021-07-08"
            rating: 75


        }
        ListElement {
            movie_id: 13
            title: "F9"
            poster: "test3"
            date: "2021-07-09"
            rating: 75


        }
    }




    GridView{
        id: movie_list_view
        anchors.fill:parent
        model: movie_list
        cellWidth: 210
        cellHeight: 373
        clip: true

        delegate: MovieCard{
            width: movie_list_view.cellWidth - 10
            height: movie_list_view.cellHeight - 10
            movie_title: title
            movie_date: date
            movie_rating: rating
            movie_id: movie_id

        }

        }


}
