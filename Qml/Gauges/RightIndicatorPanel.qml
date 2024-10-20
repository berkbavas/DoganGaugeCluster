import QtQuick 2.0

import "../Components"

Row {

    property double scaling: 1.0
    property double indicatorSize: 74 * scaling
    spacing: 32 * scaling

    Indicator {
        type: "battery"
        size: indicatorSize
        indicatorColor: "#FFFFFF"
    }

    Indicator {
        type: "battery-low"
        size: indicatorSize
        indicatorColor: "#FF0000"
    }

    Indicator {
        type: "oilcup"
        size: indicatorSize
        indicatorColor: "#FF9000"
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
