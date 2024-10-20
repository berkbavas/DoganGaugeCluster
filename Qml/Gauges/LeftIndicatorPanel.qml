import QtQuick 2.0

import "../Components"

Row {

    property double scaling: 1.0
    property double indicatorSize: 36 * scaling
    spacing: 16 * scaling

    Indicator {
        type: "headlight"
        size: indicatorSize
        indicatorColor: "#57FA62"
    }

    Indicator {
        type: "caution"
        size: indicatorSize
        indicatorColor: "#FF0000"
    }

    Indicator {
        type: "lamp"
        size: indicatorSize
        indicatorColor: "#20CFFF"
    }

    Indicator {
        type: "wiper"
        size: indicatorSize
        indicatorColor: "#57FA62"
    }

    Indicator {
        type: "park"
        size: indicatorSize
        indicatorColor: "#FFFFFF"
    }
}
