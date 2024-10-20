import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

import ".."
import "../Components"

Item {
    id: root
    clip: true
    property double value

    CircularGauge {
        width: root.width
        height: root.width

        value: root.value
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
                y: 0
                height: 0.7 * outerRadius
            }

            background: Item {
                width: 2 * outerRadius
                height: 2 * outerRadius
            }
        }
    }
}
