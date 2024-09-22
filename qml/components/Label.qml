import QtQuick 2.0

import ".."

Text {
    property var outerRadius

    x: 0
    y: 1.5 * outerRadius
    width: 2 * outerRadius
    font.family: Constants.font
    font.pixelSize: Math.max(6, outerRadius * 0.1)

    color: Constants.labelColor
    font.weight: Font.Black
    horizontalAlignment: Text.AlignHCenter
    antialiasing: true
}
