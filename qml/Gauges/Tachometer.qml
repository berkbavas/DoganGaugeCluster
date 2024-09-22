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
        maximumValue: 80
        stepSize: 1

        style: CircularGaugeStyle {
            id: style
            minimumValueAngle: -130
            maximumValueAngle: 130
            tickmarkStepSize: 5
            labelStepSize: 10
            minorTickmarkCount: 3
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

            foreground: Foreground {
                outerRadius: style.outerRadius
            }

            needle: Needle {
                outerRadius: style.outerRadius
            }

            background: Item {
                width: 2 * outerRadius
                height: 2 * outerRadius

                // High speed indicator (Orange - Red)
                Canvas {
                    anchors.fill: parent
                    onPaint: {
                        var ctx = getContext("2d")
                        ctx.reset()

                        ctx.lineWidth = 3 / 90 * outerRadius

                        ctx.beginPath()
                        ctx.arc(outerRadius, outerRadius,
                                outerRadius - ctx.lineWidth / 2 - 38 / 100 * outerRadius,
                                degreesToRadians(valueToAngle(60) - 90),
                                degreesToRadians(valueToAngle(80.5) - 90))
                        ctx.strokeStyle = "#D32300"
                        ctx.stroke()
                        ctx.closePath()

                        ctx.beginPath()
                        ctx.arc(outerRadius, outerRadius,
                                outerRadius - ctx.lineWidth / 2 - 38 / 100 * outerRadius,
                                degreesToRadians(valueToAngle(57) - 90),
                                degreesToRadians(valueToAngle(60) - 90))
                        ctx.strokeStyle = "#FFC90E"
                        ctx.stroke()
                        ctx.closePath()
                    }
                }

                Text {
                    x: 0
                    y: 0.5 * outerRadius
                    width: 2 * outerRadius
                    font.family: Constants.font
                    font.pixelSize: Math.max(6, outerRadius * 0.065)
                    text: "Takosan"
                    antialiasing: true
                    color: Constants.labelColor
                    font.weight: Font.Black
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    x: 0
                    y: 1.4 * outerRadius
                    width: 2 * outerRadius
                    font.family: Constants.font
                    font.pixelSize: Math.max(6, outerRadius * 0.065)
                    text: "ELECTRONIC"
                    antialiasing: true
                    color: Constants.labelColor
                    font.weight: Font.Black
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    x: 0
                    y: 1.55 * outerRadius
                    width: 2 * outerRadius
                    font.family: Constants.font
                    font.pixelSize: Math.max(6, outerRadius * 0.065)
                    text: "x 100"
                    antialiasing: true
                    color: Constants.labelColor
                    font.weight: Font.Black
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }

    function degreesToRadians(degrees) {
        return degrees * (Math.PI / 180)
    }
}
