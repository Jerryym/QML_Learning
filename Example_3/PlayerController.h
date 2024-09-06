#pragma once

class PlayerController : public QObject
{
	Q_OBJECT

	Q_PROPERTY(int currectIndex READ currectIndex NOTIFY currectIndexChanged)
	Q_PROPERTY(int songCount READ songCount NOTIFY songCountChanged)
	Q_PROPERTY(bool isPlaying READ isPlaying NOTIFY playingCountChanged)

public:
	PlayerController(QObject* parent = nullptr);

public:
	int currectIndex() const { return m_currectIndex; }
	int songCount() const { return m_songCount; }
	bool isPlaying() const { return m_isPlay; }

public slots:
	//播放/暂停
	void playPause();
	//切换上一首
	void switchToPreviousSong();
	//切换下一首
	void switchToNextSong();

signals:
	void currectIndexChanged();
	void songCountChanged();
	void playingCountChanged();

private:
	int m_currectIndex = 0;
	int m_songCount = 3;
	bool m_isPlay = false;
};

