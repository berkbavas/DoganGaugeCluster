import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    width: size
    height: size
    color: "#000000"
    radius: 0.15 * size

    required property double size
    required property string type
    property double padding: 0.4
    property bool innerShadowVisible: true
    property bool mouseAreaEnabled: true
    property string indicatorColor: "#ffffff"
    property bool lightOn: false

    Image {
        id: image
        width: (1 - padding) * root.width
        height:(1 - padding)  * root.height
        anchors.centerIn: root
        source: "qrc:/Resources/Images/" + type + ".svg"
        antialiasing: true
        fillMode: Image.PreserveAspectFit
        visible: false
    }

    ColorOverlay {
        id: overlay
        anchors.fill: image
        source: image
        color: lightOn ? indicatorColor : "#FFFFFF"
        antialiasing: true
    }

    Glow {
        anchors.fill: image
        radius: 0.75 * size
        spread: 0.2
        samples: 64
        color: indicatorColor
        source: overlay
        visible: lightOn ? true : false
        enabled: lightOn ? true : false
    }

    GoodInnerShadow {
        source: root
        color: "#7f1f1f1f"
        spread: 0.5
        radius: 0.75 * root.size
        visible: innerShadowVisible
        enabled: innerShadowVisible
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            lightOn = !lightOn
        }
        enabled: mouseAreaEnabled
    }
}
