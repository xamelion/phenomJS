#!/bin/sh

# Компиляция под LINUX64

# Переносим из src в build и pbgetv
zip -r -j build/phenomjs.nw src

# Компилируем под 64 битный линукс и назанчаем права на доступ
cat ~/NodeWebkit/nw build/phenomjs.nw  > bin/LINUX64/phenomjs && chmod +x bin/LINUX64/phenomjs

# Копируем дополнительные файлы
cp ~/NodeWebkit/libffmpegsumo.so    bin/LINUX64/libffmpegsumo.so
cp ~/NodeWebkit/icudtl.dat          bin/LINUX64/icudtl.dat
cp ~/NodeWebkit/nw.pak              bin/LINUX64/nw.pak
cp -R ~/NodeWebkit/locales          bin/LINUX64/locales

# Запускаем приложение
bin/LINUX64/phenomjs
