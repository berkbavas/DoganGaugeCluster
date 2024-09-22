import QtQuick 2.0

Canvas {
    property double outerRadius: 0

    width: 3.5 / 90 * outerRadius
    height: 70 /  90 * outerRadius
    antialiasing: true
    onPaint: {
        var ctx = getContext('2d')

        var gradient = ctx.createLinearGradient(0, height / 2, width,
                                                height / 2)
        gradient.addColorStop(0, '#ED1C24')
        gradient.addColorStop(1, '#7A0E13')
        ctx.fillStyle = gradient

        ctx.beginPath()
        ctx.moveTo(0.2 * width, 0)
        ctx.lineTo(0.8 * width, 0)
        ctx.lineTo(width, height)
        ctx.lineTo(0, height)
        ctx.closePath()
        ctx.fill()
    }
}
