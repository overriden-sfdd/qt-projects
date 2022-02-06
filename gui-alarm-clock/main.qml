import QtQuick 2.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    visible: true

    height: 300
    width: 500
    title: qsTr("Alarm clock")

    Column {
        ClockOptions {}
        Clock {}
    }
}
