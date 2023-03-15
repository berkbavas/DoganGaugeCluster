import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Window {
    id: window
    width: 1280
    height: 720
    visible: true
    color: "#101010"

    Row {
        anchors.centerIn: parent
        spacing: 40

        GaugeContainer {
            width: 400
            height: 400

            Speedometer {
                anchors.margins: 0.025 * parent.width
                anchors.fill: parent
            }
        }

        MiddleGauge {
            width: 400
            height: 400
        }

        GaugeContainer {
            width: 400
            height: 400

            Tachometer {
                anchors.margins: 0.025 * parent.width
                anchors.fill: parent
            }
        }

    }

}
