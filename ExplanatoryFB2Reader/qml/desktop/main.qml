import QtQuick 2.11
//import QtQuick.Window 2.11
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtLocation 5.9


ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 880
    height: 480
    title: qsTr("Explanatory FB2-Reader")

    menuBar: MyMenuBar {
        id: menuBar
    }

    header: ToolBar {
        contentHeight: 0
        font.pointSize: 10
        font.family: "Verdana"

        Rectangle {
            id: separator
            height: 1
            width: parent.width

            color: "black"
        }

        RowLayout {
            clip: true
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.top: separator.bottom
            spacing: 0

            MyToolButton { action: menuBar.booksList; icon.source: "qrc:/images/library.png" }
            ToolSeparator {}

            MyToolButton { action: menuBar.openBook; icon.source: "qrc:/images/openBook.png" }
            ToolSeparator {}

            MyToolButton { action: Action { id: contentsAction; text: qsTr("Зміст") } icon.source: "qrc:/images/contents.png" }
            ToolSeparator {}

            MyToolButton { action: menuBar.createBookmark; icon.source: "qrc:/images/createBookmark.png"; text: qsTr("Створити закладку") }
            ToolSeparator {}

            MyToolButton { action: Action { id: defenetionAction; text: qsTr("Знайти значення") } icon.source: "qrc:/images/definition.png" }
            ToolSeparator {}

            MyToolButton { action: Action { id: translationAction; text: qsTr("Переклад") } icon.source: "qrc:/images/translation.png" }
            ToolSeparator {}
        }
    }
}
