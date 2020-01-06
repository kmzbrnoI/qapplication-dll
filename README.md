QApplication Dynamic Library Instance
=====================================

This repository contains source codes for `dll` library which does one thing
only: it creates QApplication object on start and destroys it on end.

This is useful for projects, which are non-Qt and load/unload Qt dlls on a
fly. These applications must hold an instance of `QApplication` for its whole
lifetime independently on un/loading of shared dlls.

This library is reposponsible for `QApplication` lifetime. It must be loaded
before any other Qt dlls.