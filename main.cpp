#include <QApplication>
#include <QMainWindow>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);
    QMainWindow mainWin;
    mainWin.resize(400, 400);
    mainWin.show();

    return app.exec();
}