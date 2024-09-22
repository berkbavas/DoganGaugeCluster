import QtQuick 2.0

import ".."

Rectangle {
    property double outerRadius: 90

    color: Constants.tickmarkColor
    width: 1 / 90 * outerRadius
    height: 3 / 90 * outerRadius
    antialiasing: true
}
