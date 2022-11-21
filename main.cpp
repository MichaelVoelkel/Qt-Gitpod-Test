#include <QApplication>
#include <QMainWindow>
#include <QLabel>
#include <QPushButton>
#include <QBoxLayout>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    QMainWindow mainWin;
    mainWin.resize(400, 400);
    mainWin.move(200, 200);

    auto l = new QHBoxLayout(&mainWin);

    auto label = new QLabel("Hallo", &mainWin);
    auto btn = new QPushButton("Button", &mainWin);

    l->addWidget(label);
    l->addWidget(btn);

    mainWin.show();

    return app.exec();
}