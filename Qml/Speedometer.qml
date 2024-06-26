import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

CircularGauge {
    minimumValue: 0
    maximumValue: 200
    stepSize: 1

    function degreesToRadians(degrees) {
        return degrees * (Math.PI / 180)
    }

    style: CircularGaugeStyle {
        id: style
        minimumValueAngle: -130
        maximumValueAngle: 130
        tickmarkStepSize: 10
        labelStepSize: 20
        minorTickmarkCount: 5
        labelInset: 14 / 90 * outerRadius
        tickmarkInset: 30 / 100 * outerRadius
        minorTickmarkInset: 31 / 100 * outerRadius

        tickmark: Rectangle {
            color: "#ffffff"
            width: 2.5 / 100 * outerRadius
            height: 3.5 / 100 * outerRadius
            antialiasing: true
        }

        minorTickmark: Rectangle {
            color: "#ffffff"
            width: 1.5 / 90 * outerRadius
            height: 1.5 / 90 * outerRadius
            antialiasing: true
        }

        tickmarkLabel: Text {
            font.family: "Arial"
            font.pixelSize: Math.max(6, outerRadius * 0.125)
            text: styleData.value
            antialiasing: true
            color: "#ffffff"
            font.weight: Font.Black
        }

        foreground: Item {

        }

        needle: Rectangle {
            y: 20 / 90 * outerRadius
            implicitWidth: 3.5 / 90 * outerRadius
            implicitHeight: 82 / 90 * outerRadius
            antialiasing: true
            color: "#ED1C24"
            radius: 4
        }

        background: Item {
            id: root
            width: 2 * outerRadius
            height: 2 * outerRadius

            Rectangle {
                id: foreground
                width: 20.0 / 90 * outerRadius
                height: 20.0 / 90 * outerRadius
                radius: 10.0 / 90 * outerRadius
                anchors.centerIn: parent
                gradient: Gradient {
                    GradientStop {
                        position: 0.0
                        color: "#333333"
                    }
                    GradientStop {
                        position: 1.0
                        color: "#101010"
                    }
                }

                layer.enabled: true
                layer.effect: DropShadow {
                    horizontalOffset: 2 / 90 * outerRadius
                    verticalOffset: 2 / 90 * outerRadius
                    radius: 4 / 90 * outerRadius
                    spread: 0.25
                    samples: 16
                    color: "#000000"
                    source: foreground
                }
            }

            Text {
                x: 0
                y: 1.5 * outerRadius
                width: 2 * outerRadius
                font.family: "Arial"
                font.pixelSize: Math.max(6, outerRadius * 0.08)
                text: "km/h"
                antialiasing: true
                color: "#ffffff"
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
