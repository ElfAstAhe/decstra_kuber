##Домашнее задание #6

#cache
В микро-сервисе используется встроенный cache сервера приложений payara. Стандарт jsr-107 (jCache), реализация Hazelcast, key-value inMemory хранилище. Время ttl значений 5 минут. На тему алгоритма не знаю (быстро не нашёл, а копаться нет времени), но скорее всего используется LRU с вытеснением старых значений при превышении порога максимального кол-ва элементов.

# docker
`./build.sh` - собрать образы (linux)
\
`./remove.sh` - удалить образы (linux)
# helm
## скрипты
`./start.sh` - запуск (linux)
\
`./stop.sh` - останов (linux)
## командная строка
### запуск
`sudo helm install dicts-common ./dicts-common-chart --create-namespace`
### останов
`sudo helm uninstall dicts-common`

####Внимание!!! возможен перезапуск контейнера с микро-сервисом (не пугайтесь)

# postman
коллекция подготовлена для отработки тестового кейса
для наглядности необходим медленный винт для файлов бд

# newman
`newman run ./postman/elfastahe-hw6-collection.postman_collection.json --verbose --color on`