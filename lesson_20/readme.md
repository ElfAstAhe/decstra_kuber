##Домашнее задание #6

# idempotence pattern
Используется паттерн идемпотентного ключа. Идемпотентным ключём является код крипто-валюты.

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
коллекция подготовлена для отработки тестового кейса.

# newman
`newman run ./postman/elfastahe-hw9-collection.postman_collection.json --verbose --color on`