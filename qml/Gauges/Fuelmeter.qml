import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

import ".."
import "../Components"

GaugeContainer {
    id: root

    CircularGauge {
        value: root.value

        anchors.fill: parent
        minimumValue: 0
        maximumValue: 100
        stepSize: 1

        style: CircularGaugeStyle {
            id: style
            minimumValueAngle: -35
            maximumValueAngle: 35
            tickmarkStepSize: 25
            labelStepSize: 50
            minorTickmarkCount: 1
            labelInset: 14 / 90 * outerRadius
            tickmarkInset: 30 / 100 * outerRadius
            minorTickmarkInset: 30 / 100 * outerRadius

            tickmark: Tickmark {
                outerRadius: style.outerRadius
            }

            minorTickmark: MinorTickmark {
                outerRadius: style.outerRadius
            }

            tickmarkLabel: Text {
                font.family: Constants.font
                font.pixelSize: Math.max(6, outerRadius * 0.125)
                text: styleData.value
                antialiasing: true
                color: Constants.tickmarkColor
                font.weight: Font.Black
            }

            foreground: Foreground {
                outerRadius: style.outerRadius
            }

            needle: Needle {
                outerRadius: style.outerRadius
            }

            background: Item {
                width: 2 * outerRadius
                height: 2 * outerRadius


                Indicator {
                    type: "fuel"
                    x: 0.900 * outerRadius
                    y: 0.500 * outerRadius
                    width: 0.1 * parent.width
                    height: 0.1 * parent.width
                }
            }
        }
    }
}
