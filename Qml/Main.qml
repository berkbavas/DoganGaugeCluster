import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0

import "Gauges"

Window {
    id: window
    width: 1280
    height: 720
    visible: true
    color: "#ffffff"

    property double scaling: Math.min(width / 720, height / 720)

    FontLoader {
        source: "qrc:/Resources/Fonts/InriaSans/InriaSans-Bold.ttf"
    }

    FontLoader {
        source: "qrc:/Resources/Fonts/Roboto/Roboto-Bold.ttf"
    }

    Item {
        x:0
        y:0
        width: window.width
        height: window.height

        Grid {
            columns: 2
            rows: 2
            columnSpacing: 32 * scaling
            rowSpacing: 32 * scaling

            anchors {
                centerIn: parent
                margins: 16 * scaling
            }

            Speedometer {
                width: 320 * scaling
                height: 320 * scaling
                value: drivingData.speed
            }

            Tachometer {
                width: 320 * scaling
                height: 320 * scaling
                value: drivingData.throttle
            }

            Fuelmeter {
                width: 320 * scaling
                height: 320 * scaling
                value: drivingData.fuelTank
            }

            TemperatureMeter {
                width: 320 * scaling
                height: 320 * scaling
                value: drivingData.temperature
            }
        }
    }
}
