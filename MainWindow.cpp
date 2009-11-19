#include <QLineEdit>
#include <QKeyEvent>
#include <QScrollBar>
#include <QDebug>
#include "MainWindow.h"

MainWindow::MainWindow() :
    QMainWindow(),
    m_process(this),
    m_current(0)
{
    setupUi(this);
    statusBar()->hide();
    connect(comboBox->lineEdit(), SIGNAL(returnPressed()), this, SLOT(compute()));
    connect(&m_process, SIGNAL(readyReadStandardError()), this, SLOT(display()));
    connect(&m_process, SIGNAL(readyReadStandardOutput()), this, SLOT(display()));
    m_process.start("/usr/bin/bc");
    comboBox->setFocus(Qt::OtherFocusReason);
    comboBox->setCompleter(0);
    comboBox->installEventFilter(this);
    textEdit->setReadOnly(true);
    textEdit->installEventFilter(this);
}

MainWindow::~MainWindow()
{
    m_process.write("exit\n");
}

bool MainWindow::eventFilter(QObject *object, QEvent *event)
{
    if(object == textEdit && event->type() == QEvent::FocusIn)
    {
        comboBox->setFocus(Qt::OtherFocusReason);
        return true;
    }

    if(object == comboBox && event->type() == QEvent::KeyPress)
    {
        QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);

        if(keyEvent->key() == Qt::Key_Up)
        {
            if(m_current > 0)
            {
                comboBox->setCurrentIndex(--m_current);
            }
            return true;
        }
        if(keyEvent->key() == Qt::Key_Down)
        {
            if(m_current < comboBox->count())
            {
                comboBox->setCurrentIndex(++m_current);
            }
            return true;
        }
    }

    return false;
}

void MainWindow::compute()
{
    textEdit->insertHtml("<p><i>" + comboBox->currentText() + "</i></p>");
    textEdit->insertPlainText("\n");
    m_process.write(comboBox->currentText().toLatin1() + "\n");
    comboBox->lineEdit()->clear();
    m_current = comboBox->count();
    scrollToEnd();
}

void MainWindow::display()
{
    textEdit->insertHtml("<p><tt>" +
                         m_process.readAllStandardError() +
                         m_process.readAllStandardOutput() +
                         "</tt></p>");
    textEdit->insertPlainText("\n");
    scrollToEnd();
}

void MainWindow::scrollToEnd()
{
    textEdit->verticalScrollBar()->setSliderPosition(textEdit->verticalScrollBar()->maximum());
}
