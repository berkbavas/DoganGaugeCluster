import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

CircularGauge {
    minimumValue: 0
    maximumValue: 100
    value: 15
    stepSize: 1

    style: CircularGaugeStyle {
        id: style
        minimumValueAngle: -35
        maximumValueAngle: 35
        tickmarkStepSize: 25
        labelStepSize: 50
        minorTickmarkCount: 0
        labelInset: 14 / 90 * outerRadius
        tickmarkInset: 30 / 100 * outerRadius
        minorTickmarkInset: 31 / 100 * outerRadius

        tickmark: Rectangle {
            color: "#ffffff"
            width: 2.5 / 100 * outerRadius
            height: 3.5 / 100 * outerRadius
            radius: 3.5 / 100 * outerRadius
            antialiasing: true
        }

        tickmarkLabel: Text {
            font.family: "Arial"
            font.pixelSize: Math.max(6, outerRadius * 0.125)
            text: styleData.value === 50 ? "1/2" : styleData.value === 100 ? "4/4" : styleData.value
            antialiasing: true
            color: "#ffffff"
            font.weight: Font.Black
        }

        foreground: Item {


        }

        needle: Rectangle {
            y:  -22 / 90 * outerRadius
            implicitWidth: 3.5 / 90 * outerRadius
            implicitHeight: 42 / 90 * outerRadius
            antialiasing: true
            color: "#ED1C24"
            radius: 2
        }

        background: Item {
            id: root
            width: 2 * outerRadius
            height: 2 * outerRadius

        }
    }
}
