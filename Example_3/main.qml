import QtQuick
import QtQuick.Window
import com.company.PlayerController

Window {
    id: mainWindow
    visible: true
	//设置大小
    width: 1200; height: 720
	//设置标题
    title: "Music Player"
	
    //顶部栏
    Rectangle {
        id: topBar
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        } 
        height: 60
        color: "#000000"
    }

    //主面区域
    Rectangle {
        id: mainArea
        anchors {
            left: parent.left
            right: parent.right
            top: topBar.bottom
            bottom: bottomBar.top
        }
		color: "#000000"

        AudioInfoBox {
            id: audioInfoBox
            anchors {
                left: parent.left
                right: parent.right
                margins: 20
                verticalCenter: parent.verticalCenter
            }
            songIndex: 0
            songName: "Lost In The Echo"
            authorName: "Linkin Park"
            imageSrc: "qrc:/qml/res/LIVING_THINGS.jpg"
        }
    }

    //底部栏
    Rectangle {
        id: bottomBar
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: 80
        color: "#303030"

        Row {
            anchors.centerIn: parent
            spacing: 20
            
            //上一首按钮
            ImageButton {
                id: previousButton
				width: 48; height: 48
                source: "qrc:/qml/res/skip_previous.png"
                onClicked: PlayerController.switchToPreviousSong();
            }
			//播放/暂停按钮
            ImageButton {
                id: playPauseButton
				width: 48; height: 48
                source: (PlayerController.isPlaying == true) ? "qrc:/qml/res/pause_circle.png" : "qrc:/qml/res/play_circle.png";
                onClicked: PlayerController.playPause();
            }
            //下一首按钮
            ImageButton {
                id: nextButton
				width: 48; height: 48
                source: "qrc:/qml/res/skip_next.png"
                onClicked: PlayerController.switchToNextSong();
            }
        }
    }
}
