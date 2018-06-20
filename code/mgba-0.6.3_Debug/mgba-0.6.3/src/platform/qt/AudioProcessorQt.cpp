/* Copyright (c) 2013-2015 Jeffrey Pfau
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
#include "AudioProcessorQt.h"

#include "AudioDevice.h"
#include "LogController.h"

#include <QAudioOutput>
#include <QFile>
#include <QTextStream>

#include <mgba/core/core.h>
#include <mgba/core/thread.h>

using namespace QGBA;

AudioProcessorQt::AudioProcessorQt(QObject* parent)
	: AudioProcessor(parent)
{

    QString filename = "Data.txt";
        QFile file(filename);
        if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
            QTextStream stream(&file);
            stream << "AudioProcessorQt Konstruktor" << endl;
        }

}

void AudioProcessorQt::setInput(mCoreThread* input) {
	AudioProcessor::setInput(input);
	if (m_device) {
		m_device->setInput(input);


                QString filename = "Data.txt";
                    QFile file(filename);
                    if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                        QTextStream stream(&file);
                        stream << "AudioProcessorQt::setInput m_device = true" << endl;
                    }

		if (m_audioOutput) {
			m_device->setFormat(m_audioOutput->format());

                        //QString filename = "Data.txt";
                            QFile file(filename);
                            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                                QTextStream stream(&file);
                                stream << "AudioProcessorQt::setInput m_audioOutput = true" << endl;
                            }
		}
	}

        QString filename = "Data.txt";
            QFile file(filename);
            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                QTextStream stream(&file);
                stream << "AudioProcessorQt::setInput m_device = false" << endl;
            }
}

bool AudioProcessorQt::start() {
	if (!input()) {
		LOG(QT, WARN) << tr("Can't start an audio processor without input");
		return false;
	}

   /*     QString filename = "Data.txt";
            QFile file(filename);
            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                QTextStream stream(&file);
                stream << "AudiProcessorQt::start() \n" << endl;
            }
*/
	if (!m_device) {
		m_device = new AudioDevice(this);

                QString filename = "Data.txt";
                    QFile file(filename);
                    if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                        QTextStream stream(&file);
                        stream << "AudiProcessorQt::start() new AudioDevice" << endl;
                    }else{


                    }

	}

	if (!m_audioOutput) {
		QAudioFormat format;
		format.setSampleRate(m_sampleRate);
		format.setChannelCount(2);
		format.setSampleSize(16);
		format.setCodec("audio/pcm");
		format.setByteOrder(QAudioFormat::Endian(QSysInfo::ByteOrder));
		format.setSampleType(QAudioFormat::SignedInt);

		m_audioOutput = new QAudioOutput(format, this);
		m_audioOutput->setCategory("game");

                QString filename = "Data.txt";
                    QFile file(filename);

                    if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                        QTextStream stream(&file);
                        stream << "AudiProcessorQt::start() Format erstellen" << m_sampleRate << endl;
                    }

	}

	m_device->setInput(input());
	m_device->setFormat(m_audioOutput->format());

	m_audioOutput->start(m_device);

       QString filename = "Data.txt";
            QFile file(filename);
            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                QTextStream stream(&file);
                stream << "AudiProcessorQt::start() AudioOutput gestartet" << endl;
            }

	return m_audioOutput->state() == QAudio::ActiveState;
}

void AudioProcessorQt::pause() {
	if (m_audioOutput) {

            QString filename = "Data.txt";
                QFile file(filename);
                if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                    QTextStream stream(&file);
                    stream << "AudioProcessorQt::pause()" << endl;
                }


		m_audioOutput->stop();
	}
}

void AudioProcessorQt::setBufferSamples(int samples) {
}

void AudioProcessorQt::inputParametersChanged() {
	if (m_device) {
		m_device->setFormat(m_audioOutput->format());

                QString filename = "Data.txt";
                    QFile file(filename);
                    if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                        QTextStream stream(&file);
                        stream << "inputParametersChanged() if m_device = true" << endl;
                    }

	}


        QString filename = "Data.txt";
            QFile file(filename);
            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                QTextStream stream(&file);
                stream << "inputParametersChanged() if m_device = false" << endl;
            }
}

void AudioProcessorQt::requestSampleRate(unsigned rate) {
	m_sampleRate = rate;
	if (m_device) {
		QAudioFormat format(m_audioOutput->format());
		format.setSampleRate(rate);
		m_device->setFormat(format);

                QString filename = "Data.txt";
                    QFile file(filename);
                    if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                        QTextStream stream(&file);
                        stream << "requestSampleRate m_device = true" << endl;
                    }

	}

        QString filename = "Data.txt";
            QFile file(filename);
            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                QTextStream stream(&file);
                stream << "requestSampleRate m_device = false" << endl;
            }
}

unsigned AudioProcessorQt::sampleRate() const {
	if (!m_audioOutput) {
		return 0;
	}

        QString filename = "Data.txt";
            QFile file(filename);
            if (file.open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                QTextStream stream(&file);
                stream << "sampleRate m_audiOutput = true" << endl;
            }

	return m_audioOutput->format().sampleRate();
}
