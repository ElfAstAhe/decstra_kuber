##Домашнее задание #3

# Ручной запуск
Запуск db:
`sudo kubectl apply -f app-config.yaml -f postgres.yaml`

Запуск микро-сервиса:
`sudo kubectl apply -f ingress.yaml -f service.yaml -f deployment.yaml`

####Внимание!!!
Запускать микро-сервис после статуса RUNNING контейнера БД.


# helm запуск
Запуск:
`sudo helm install helm ./dicts-common-chart`

####Внимание!!! возможен перезапуск контейнера с микро-сервисом (не пугайтесь)

## postman, в коллекции смотреть cryptoCurrency ресурс