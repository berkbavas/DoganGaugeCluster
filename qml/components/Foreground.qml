import QtQuick 2.0

Item {
    property double outerRadius: 0

    Rectangle {

        width: 16.0 / 90 * outerRadius
        height: 16.0 / 90 * outerRadius
        radius: 8.0 / 90 * outerRadius
        anchors.centerIn: parent

        gradient: Gradient {

            GradientStop {
                position: 0.0
                color: "#333333"
            }
            GradientStop {
                position: 1.0
                color: "#101010"
            }
        }
    }
}
