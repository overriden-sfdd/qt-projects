import QtQuick 2.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.0

Rectangle {
    id: clkOptsContainer
    width: 500
    height: 80
    color: "#010101"
    Item {
        anchors.fill: parent
        FontLoader {
            id: googleSans
            source: "https://bestfonts.pro/fonts_files/5de02c0fbc00f605b3d2d2bd/files/GoogleSans-Regular.ttf"
        }

        Text {
            text: "MON"
            color: "#aaaba2"
            font.family: googleSans.name
            font.bold: true

            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
            }
            anchors.topMargin: 16
        }
        Row {
            spacing: 16
            anchors.right: parent.right
            anchors.margins: {
                right: 16
                left: 16
            }
            Button {
                enabled: false // temporarily disabled
                text: "-2\u00B0"
                icon.name: "ic-weather"
                icon.source: "/icons/weather-cloudy.svg"

                contentItem: Row {
                    spacing: 4

                    IconImage {
                        id: weatherIcon
                        name: "ic-weather"
                        source: "/icons/weather-cloudy.svg"
                        color: "#aaaba2"
                    }
                    Text {
                        id: temperature
                        text: "-2 C"
                        font.family: googleSans.name
                        anchors.top: parent.top
                        anchors.topMargin: 4
                        color: "#aaaba2"
                    }
                }

                background: Rectangle {
                    color: "transparent"
                }
            }
            Button {
                id: clkSetter
                icon.name: "ic-alarm"
                icon.source: "/icons/alarm.svg"
                icon.color: "#aaaba2"

                background: Rectangle {
                    color: "transparent"
                }
                onPressed: {
                    console.log("alarm pressed")
                }
            }
        }
    }
}
