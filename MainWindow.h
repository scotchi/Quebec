#include <QMainWindow>
#include <QProcess>
#include "ui_MainWindow.h"

class MainWindow : public QMainWindow, public Ui::MainWindow
{
    Q_OBJECT
public:
    MainWindow();
    ~MainWindow();
protected:
    bool eventFilter(QObject *object, QEvent *event);
private slots:
    void compute();
    void display();
private:
    QProcess m_process;
    int m_current;
};
