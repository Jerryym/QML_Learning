import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
	id: root
	width: 960
	height: 720
	visible: true
	title: qsTr("Example-1")
	color: "skyblue"
	
	//设置为垂直布局
	ColumnLayout {
		spacing: 1
		anchors.centerIn: parent
		
		//点击按钮
		Button {
			Layout.alignment: Qt.AlignCenter
			Layout.preferredWidth: 150
			Layout.preferredHeight: 75
			text: "Click Me"
			onClicked: {
				//显示消息对话框
				msgDialog.visible = true;
			}
		}

		//关闭按钮
		Button {
			Layout.alignment: Qt.AlignCenter
			Layout.preferredWidth: 150
			Layout.preferredHeight: 75
			text: "Close"
			onClicked: {
				//关闭窗口
				root.close();
				Qt.quit();
			}
		}

		//消息对话框
		MessageDialog {
			id: msgDialog
			buttons: MessageDialog.Ok
			title: "Message"
			text: "Hello, Qt QML!"
		}
	}
}
