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
    minimumWidth: 640
    minimumHeight: 480

    property double scaling: 2 * Math.min(width / 1920, height / 1080)

    FontLoader {
        source: "qrc:/Resources/Fonts/InriaSans/InriaSans-Bold.ttf"
    }

    FontLoader {
        source: "qrc:/Resources/Fonts/Roboto/Roboto-Bold.ttf"
    }

    Item {
        id: container
        x: 0
        y: 0
        width: speedometer.width + middleGauges.width + tachometer.width
        height: 320 * scaling
        anchors.centerIn: parent

        Speedometer {
            id: speedometer
            width: 320 * scaling
            height: 320 * scaling
            value: drivingData.speed
            anchors.left: container.left
            anchors.verticalCenter: container.verticalCenter
        }

        MiddleGauges {
            id: middleGauges
            scaling: window.scaling
            anchors.left: speedometer.right
            anchors.verticalCenter: container.verticalCenter
        }

        Tachometer {
            id: tachometer
            width: 320 * scaling
            height: 320 * scaling
            value: drivingData.throttle
            anchors.left: middleGauges.right
            anchors.verticalCenter: container.verticalCenter
        }

        LeftIndicatorPanel {
            id: leftIndicatorPanel
            anchors.top: speedometer.bottom
            anchors.horizontalCenter: speedometer.horizontalCenter
        }


        RightIndicatorPanel {
            id: rightIndicatorPanel
            anchors.top: tachometer.bottom
            anchors.horizontalCenter: tachometer.horizontalCenter
        }
    }
}
