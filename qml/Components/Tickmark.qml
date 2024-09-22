import QtQuick 2.0

import ".."

Rectangle {
    property double outerRadius: 100

    color: Constants.tickmarkColor
    width: 2 / 100 * outerRadius
    height: 6 / 100 * outerRadius
    antialiasing: true
}
