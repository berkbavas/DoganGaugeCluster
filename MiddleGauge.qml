import QtQuick 2.0
import QtGraphicalEffects 1.15

Item {
    id: root
    clip: true

    GaugeContainer {
        y: 0.025 * parent.height
        width: parent.width
        height: 0.35 * parent.height

        TemperatureMeter {
            y: 0
            width: root.width
            height: root.height
        }
    }



    GaugeContainer {
        y: 0.625 * parent.height
        width: parent.width
        height: 0.35 * parent.height

        Fuelmeter {
            y: 0
            width: root.width
            height: root.height
        }
    }

    Indicator {
        type: "temperature"
        x: 0.5 * parent.width - 0.5 * width
        y: 0.4 * parent.height
        width: 0.07 * parent.width
        height: 0.07 * parent.width
    }

    Indicator {
        type: "fuel"
        x: 0.5 * parent.width - 0.5 * width
        y: 0.515 * parent.height
        width: 0.07 * parent.width
        height: 0.07 * parent.width
    }

}
