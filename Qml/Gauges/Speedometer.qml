import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

import ".."
import "../Components"

Item {
    id: root
    width: 320
    height: 320

    property double value

    CircularGauge {
        value: root.value
        anchors.fill: root
        minimumValue: 0
        maximumValue: 200
        stepSize: 1

        style: CircularGaugeStyle {
            id: style
            minimumValueAngle: -130
            maximumValueAngle: 130
            tickmarkStepSize: 10
            labelStepSize: 20
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

            tickmarkLabel: TickmarkLabel {
                font.pixelSize: Math.max(6, outerRadius * 0.125)
                text: styleData.value
            }

            foreground: Item {}

            needle: Needle {
                outerRadius: style.outerRadius
            }

            background: Item {
                id: background
                width: 2 * outerRadius
                height: 2 * outerRadius

                Foreground {
                    outerRadius: style.outerRadius
                    anchors.centerIn: background
                }

                Text {
                    x: 0
                    y: 1.5 * outerRadius
                    width: 2 * outerRadius
                    font.family: Constants.font
                    font.pixelSize: Math.max(6, outerRadius * 0.1)
                    text: "km/h"
                    antialiasing: true
                    color: Constants.labelColor
                    font.weight: Font.Black
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }
}
