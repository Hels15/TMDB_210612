import QtQuick 2.0
import QtQuick.Layouts
Rectangle {
    GridView{
        id: grid_view
        anchors.fill:parent
        model: 100
        cellWidth: 210
        cellHeight: 373
        clip: true

        delegate: MovieCard{
            width: grid_view.cellWidth - 10
            height: grid_view.cellHeight - 10

        }

        }

}
