##Домашнее задание #3

Запуск db:
`sudo kubectl apply -f app-config.yaml -f postgres.yaml`

Запуск микро-сервиса:
`sudo kubectl apply -f ingress.yaml -f service.yaml -f deployment.yaml`

####Внимание!!!
Запускать микро-сервис после статуса RUNNING контейнера БД.