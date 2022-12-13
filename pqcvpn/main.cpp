#include <QGuiApplication>
#include <QQmlApplicationEngine>

/****************c++ 연동 test code*****************/
#include <QQmlContext>
#include "test.h"
/**************************************************/

int main(int argc, char *argv[])
{
    /****************c++ 연동 test code*****************/
    Back *back = new Back;
    /**************************************************/

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    /****************c++ 연동 test code*****************/
    engine.rootContext()->setContextProperty("back", back);
    /**************************************************/

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
