import QtQuick 2.0

import "../Components"

Row {

    property double scaling: 1.0
    property double indicatorSize: 56 * scaling
    spacing: 30 * scaling

    Indicator {
        type: "battery"
        size: indicatorSize
        indicatorColor: "#FFFFFF"
    }

    Indicator {
        type: "oilcup"
        size: indicatorSize
        indicatorColor: "#F0C108"
    }

    Indicator {
        type: "shelter-belt"
        size: indicatorSize
        indicatorColor: "#FFFFFF"
    }

    Indicator {
        type: "abs"
        size: indicatorSize
        indicatorColor: "#FF0000"
    }
}
