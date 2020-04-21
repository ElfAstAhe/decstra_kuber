##Домашнее задание #2

Запуск: 
`sudo kubectl apply -f .`

Цикличная проверка:
`while true ; do curl --request GET http://arch.homework/otusapp/info ; sleep 1 ; done`
или
`while true ; do curl --request GET http://arch.homework/otusapp/health ; sleep 1 ; done`