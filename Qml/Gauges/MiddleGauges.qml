import QtQuick 2.0

import "../Components"

Item {
    id: root
    width: 240 * scaling
    height: temperatureMeter.height + mask.height + fuelmeter.height
    property double scaling: 1.0

    TemperatureMeter {
        id: temperatureMeter
        width: 240 * scaling
        height: 75 * scaling
        value: drivingData.temperature
    }

    Rectangle {
        id: mask
        color: "#000000"
        anchors.top: temperatureMeter.bottom
        width: 240 * scaling
        height: 64 * scaling

        Indicator {
            type: "temperature"
            color: "#000000"
            size: 22 * scaling
            padding: 0.25
            innerShadowVisible: false
            mouseAreaEnabled: false
            anchors.horizontalCenter: mask.horizontalCenter
            anchors.top: mask.top
        }

        Indicator {
            type: "fuel"
            color: "#000000"
            size: 22 * scaling
            padding: 0.25
            innerShadowVisible: false
            mouseAreaEnabled: false
            anchors.horizontalCenter: mask.horizontalCenter
            anchors.bottom: mask.bottom
        }
    }

    Fuelmeter {
        id: fuelmeter
        anchors.top: mask.bottom
        width: 240 * scaling
        height: 75 * scaling
        value: drivingData.fuelTank
    }
}
