import QtQuick

Image {
    id: root

	//注册信号
    signal clicked()

    mipmap: true

    MouseArea {
        id: buttonMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            root.clicked()
        }
    }
}
