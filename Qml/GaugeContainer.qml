import QtQuick 2.0
import QtGraphicalEffects 1.15

Item {
    clip: true

    Rectangle {
        id: nw
        x: 0
        y: 0
        width: 0.5 * parent.width
        height: 0.5 * parent.height
        color: "#181818"
    }

    Rectangle {
        id: ne
        x: 0.5 * parent.width
        y: 0
        width: 0.5 * parent.width
        height: 0.5 * parent.height
        color: "#181818"
    }

    Rectangle {
        id: sw
        x: 0
        y: 0.5 * parent.height
        width: 0.5 * parent.width
        height: 0.5 * parent.height
        color: "#181818"
    }

    Rectangle {
        id: se
        x: 0.5 * parent.width
        y: 0.5 * parent.height
        width: 0.5 * parent.width
        height: 0.5 * parent.height
        color: "#181818"
    }

    InnerShadow {
        anchors.fill: nw
        radius: 16.0
        samples: 32
        horizontalOffset: 3
        verticalOffset: 3
        color: "#b0000000"
        source: nw
    }

    InnerShadow {
        anchors.fill: ne
        radius: 16.0
        samples: 32
        horizontalOffset: -3
        verticalOffset: 3
        color: "#b0000000"
        source: nw
    }

    InnerShadow {
        anchors.fill: sw
        radius: 16.0
        samples: 32
        horizontalOffset: 3
        verticalOffset: -3
        color: "#b0000000"
        source: nw
    }

    InnerShadow {
        anchors.fill: se
        radius: 16.0
        samples: 32
        horizontalOffset: -3
        verticalOffset: -3
        color: "#b0000000"
        source: nw
    }

}
