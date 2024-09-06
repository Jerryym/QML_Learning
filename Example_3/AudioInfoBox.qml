import QtQuick
import com.company.PlayerController

Item {
	id: infoBox

	required property int songIndex
	property alias songName: songName.text
	property alias authorName: author.text
	property alias imageSrc: albumImage.source

    //visible: PlayerController.currentIndex === songIndex

	//专辑图片
	Image {
		id: albumImage
		anchors {
			left: parent.left
			leftMargin: 50
			verticalCenter: parent.verticalCenter
		}
		width: 200; height: 200
	}

	//曲名
	Text {
		id: songName
		anchors {
			left: albumImage.right
			margins: 30
			right: parent.right
			verticalCenter: parent.verticalCenter
		}
		color: "#FFFFFF"
		wrapMode: Text.WrapAnywhere
		//设置文字类型
		font {
			pixelSize: 36
			bold: true
		}
	}

	//作者
	Text {
		id: author
		anchors {
			left: songName.left
			top: parent.verticalCenter
			topMargin: 20
			right: parent.right
		}
		color: "#5e5e5e"
		wrapMode: Text.WrapAnywhere
		//设置文字类型
		font {
			pixelSize: 24
		}
	}
}
