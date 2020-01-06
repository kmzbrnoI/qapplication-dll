#ifndef QAPP_H
#define QAPP_H

#include <QApplication>
#include <memory>

class AppThread {
	std::unique_ptr<QApplication> app;
	int argc {0};

public:
	AppThread() {
		if (nullptr == qApp) {
			app = std::make_unique<QApplication>(argc, nullptr);
			QMetaObject::invokeMethod(qApp, "quit", Qt::QueuedConnection);
			app->exec();
		}
	}
};

AppThread main_thread;

#endif
