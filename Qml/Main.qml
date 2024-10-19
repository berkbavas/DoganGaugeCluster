import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0

import "Gauges"
import "Components"

Window {
    id: window
    width: 1280
    height: 720
    visible: true
    color: "#000000"

    property double scaling: 2 * Math.min(width / 1920, height / 1080)

    FontLoader {
        source: "qrc:/Resources/Fonts/InriaSans/InriaSans-Bold.ttf"
    }

    FontLoader {
        source: "qrc:/Resources/Fonts/Roboto/Roboto-Bold.ttf"
    }

    Item {
        x: 0
        y: 0
        width: window.width
        height: window.height

        Row {
            spacing: 12 * scaling

            anchors {
                centerIn: parent
                margins: 16 * scaling
            }

            Speedometer {
                id: speedometer
                width: 320 * scaling
                height: 320 * scaling
                value: drivingData.speed
            }

            Item {
                anchors.verticalCenter: parent.verticalCenter
                width: 240 * scaling
                height: temperatureMeter.height + mask.height + fuelmeter.height

                TemperatureMeter {
                    id: temperatureMeter
                    width: 240 * scaling
                    height: 80 * scaling
                    value: drivingData.temperature
                }

                Rectangle {
                    id: mask
                    color: "#000000"
                    anchors.top: temperatureMeter.bottom
                    width: 240 * scaling
                    height: 64 * scaling
                    z: 999

                    Indicator {
                        type: "temperature"
                        width: 20 * scaling
                        height: 20 * scaling
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                    }

                    Indicator {
                        type: "fuel"
                        width: 20 * scaling
                        height: 20 * scaling
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                    }
                }

                Fuelmeter {
                    id: fuelmeter
                    anchors.top: mask.bottom
                    width: 240 * scaling
                    height: 80 * scaling
                    value: drivingData.fuelTank
                }
            }

            Tachometer {
                width: 320 * scaling
                height: 320 * scaling
                value: drivingData.throttle
            }
        }
    }
}
