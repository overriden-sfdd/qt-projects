import QtQuick 2.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.0

Rectangle {
    id: clkContainer

    color: "#010101"
    width: 500
    height: 220

    Item {
        id: clk
        property date currentDate: new Date()
        anchors.fill: parent

        FontLoader {
            id: googleSans
            source: "https://bestfonts.pro/fonts_files/5de02c0fbc00f605b3d2d2bd/files/GoogleSans-Regular.ttf"
        }
        Timer {
            interval: 500
            running: true
            repeat: true
            onTriggered: {
                clk.currentDate = new Date()
                var hours = `${clk.currentDate.getHours()}`.padStart(2, '0')
                var minutes = `${clk.currentDate.getMinutes()}`.padStart(2, '0')
                var seconds = `${clk.currentDate.getSeconds()}`.padStart(2, '0')
                clkTime.text = `${hours}:${minutes}:${seconds}`
            }
        }

        Column {
            anchors.fill: parent
            Text {
                id: clkTime
                color: "white"
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }

                font.family: googleSans.name
                font.pointSize: 80
                font.bold: true
            }
            Row {
                spacing: 4
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                Button {
                    icon.name: "ic-add-alarm"
                    icon.source: "/icons/alarm-plus.svg"
                    icon.color: "#aaaba2"

                    background: Rectangle {
                        color: "transparent"
                    }
                }

                Text {
                    anchors.top: parent.top
                    anchors.topMargin: 15
                    text: "Add alarm for today?"
                    color: "#aaaba2"
                    font.family: googleSans.name
                }
            }
        }
    }
}
