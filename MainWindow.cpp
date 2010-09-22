#include <QLineEdit>
#include <QKeyEvent>
#include <QScrollBar>
#include <QDebug>
#include "MainWindow.h"

#define BINARY "/usr/bin/bc"

MainWindow::MainWindow() :
    QMainWindow(),
    m_process(this),
    m_current(0),
    m_shuttingDown(false)
{
    setupUi(this);
    statusBar()->hide();
    connect(comboBox->lineEdit(), SIGNAL(returnPressed()), this, SLOT(compute()));
    connect(&m_process, SIGNAL(readyReadStandardError()), this, SLOT(display()));
    connect(&m_process, SIGNAL(readyReadStandardOutput()), this, SLOT(display()));
    connect(&m_process, SIGNAL(finished(int, QProcess::ExitStatus)), this, SLOT(restart()));
    m_process.start(BINARY);
    comboBox->setFocus(Qt::OtherFocusReason);
    comboBox->setCompleter(0);
    comboBox->installEventFilter(this);
    textEdit->setReadOnly(true);
    textEdit->installEventFilter(this);

    // These are used to hide / show the window on OS X

    qApp->installEventFilter(this);
    installEventFilter(this);
}

MainWindow::~MainWindow()
{
    m_shuttingDown = true;
    m_process.write("quit\n");
    m_process.waitForFinished(1000);
}

bool MainWindow::eventFilter(QObject *object, QEvent *event)
{
    if(event->type() == QEvent::KeyPress &&
       static_cast<QKeyEvent *>(event)->matches(QKeySequence::Copy))
    {
        textEdit->copy();
    }

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

        QStringList operands;
        operands << "+" << "-" << "^" << "/" << "*" << "%";

        if(operands.contains(keyEvent->text()) && comboBox->currentText().isEmpty() &&
           comboBox->count() > 0)
        {
            m_current = comboBox->count() - 1;
            comboBox->setCurrentIndex(m_current);
            comboBox->setEditText("(" + comboBox->currentText() + ")" + keyEvent->text());
            return true;
        }
    }

#ifdef Q_WS_MAC

    if(object == this && event->type() == QEvent::Close)
    {
        event->ignore();
        hide();
        return true;
    }

    if(object == qApp && event->type() == QEvent::ApplicationActivate)
    {
        show();
    }

#endif

    return false;
}

void MainWindow::compute()
{
    QString text = comboBox->currentText();
    comboBox->removeItem(comboBox->findText(text));
    comboBox->addItem(text);

    textEdit->moveCursor(QTextCursor::End);
    textEdit->insertHtml("<p><i>" + text + "</i></p>");
    textEdit->insertPlainText("\n");
    m_process.write(text.toLatin1() + "\n");

    comboBox->lineEdit()->clear();
    m_current = comboBox->count();
    scrollToEnd();
}

void MainWindow::display()
{
    QByteArray err = m_process.readAllStandardError();
    QByteArray out = m_process.readAllStandardOutput();

    out.replace("\\\n", "");
    err.replace("\\\n", "");

    textEdit->moveCursor(QTextCursor::End);
    textEdit->insertHtml("<p><tt>" + out + err + "</tt></p>");
    textEdit->insertPlainText("\n");
    scrollToEnd();
}

void MainWindow::scrollToEnd()
{
    textEdit->verticalScrollBar()->setSliderPosition(textEdit->verticalScrollBar()->maximum());
}

void MainWindow::restart()
{
    if(!m_shuttingDown)
    {
        m_process.start(BINARY);
    }
}
