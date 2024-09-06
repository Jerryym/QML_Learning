#include "stdafx.h"
#include "PlayerController.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN) && QT_VERSION_CHECK(5, 6, 0) <= QT_VERSION && QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
	//设置ICON
	app.setWindowIcon(QIcon(":/qml/res/headphones.png"));

	//实例化C++类并注册到QML文件中
	PlayerController* playerController = new PlayerController(&app);
	qmlRegisterSingletonInstance("com.company.PlayerController", 1, 0, "PlayerController", playerController);

    QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
