##Домашнее задание #1

Запустить:
`sudo docker run -d -p 8000:8080 elfastahe/hello.world:V1`

Проверить:
`curl --request GET http://localhost:8000/hello.world/api/v1/health`