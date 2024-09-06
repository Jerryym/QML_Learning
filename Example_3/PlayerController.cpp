#include "stdafx.h"
#include "PlayerController.h"

PlayerController::PlayerController(QObject* parent)
{
}

void PlayerController::playPause()
{
	m_isPlay = !m_isPlay;
	emit playingCountChanged();
}

void PlayerController::switchToPreviousSong()
{
	m_currectIndex = (m_currectIndex - 1 < 0) ? m_currectIndex = m_songCount - 1 : m_currectIndex--;
	emit currectIndexChanged();
}

void PlayerController::switchToNextSong()
{
	m_currectIndex = (m_currectIndex + 1 >= m_songCount) ? 0 : m_currectIndex++;
	emit currectIndexChanged();
}
