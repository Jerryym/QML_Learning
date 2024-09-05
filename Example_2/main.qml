import QtQuick
import QtQuick.Window
import QtQuick.Layouts

Window {
	visible: true
	width: 640
	height: 480
	title: "Example_2"
	
	GridLayout {
		anchors.fill: parent
		rows: 2
		columns: 2
		rowSpacing: 10
		columnSpacing: 10

		Item{
			Layout.fillWidth: true
			Layout.fillHeight: true
			//设置矩形
			Rectangle {
				//设置大小
				width: 100; height: 100
				//设置位置
				x: 40; y: 40
				//设置颜色
				color: "red"
				//设置边界颜色和边界线宽度
				border.color: "black"; border.width: 5
				//设置倒圆角
				radius: 10
			}
		}

		Item{
			Layout.fillWidth: true
			Layout.fillHeight: true
			//导入字体
			FontLoader {
				id: localFont
				source: "qrc:/qt/qml/res/fonts/PlaywriteCU.ttf"
			}
			//设置文字
			Text {
				//设置位置
				x: 35; y: 60
				//设置文字信息
				font.family: localFont.name
				text: "Hello World"
				font.pointSize: 24
				//设置颜色
				color: "lightskyblue"
			}
		}

		Item{
			Layout.fillWidth: true
			Layout.fillHeight: true
			Image {
				source: "qrc:/qt/qml/res/pic0.jpg"
				//设置大小
				width: 160; height: 90
				//设置位置
				x: 35; y: 35
			}
		}

		Item {
			Layout.fillWidth: true
			Layout.fillHeight: true
            //流式布局
            Flow {
                anchors.fill: parent
                spacing: 10
                Repeater {
                    model: 10
                    Rectangle {
                        //设置大小
                        width: 20; height: 20
                        //设置颜色
                        color: "mediumturquoise"
                    }
                }
            }
		}
	}
}
