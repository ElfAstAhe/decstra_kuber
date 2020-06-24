##Домашнее задание #5

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
`sudo helm install users ./users-chart`
\
`sudo helm install auth ./auth-chart`
### останов
`sudo helm uninstall auth`
\
`sudo helm uninstall users`

####Внимание!!! возможен перезапуск контейнера с микро-сервисом (не пугайтесь)

# postman
коллекция подготовлена для отработки тестового кейса (см. описание тестового кейса hw_task.odt)

# newman
`newman run ./postman/elfastahe-hw5-collection.postman_collection.json --verbose --color on`