##Домашнее задание #11
# диаграмма
![lesson_22_db_shard_diagram.png](./diagram/lesson_22_db_shard_diagram.png)

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
`sudo kubectl apply -f integrations-ingress.yaml`
\
`sudo helm install integrations ./integrations-chart`
### останов
`sudo helm uninstall integrations`
\
`sudo kubectl delete ingress integrations-proxy`
####Внимание!!! возможен перезапуск контейнера с микро-сервисом (не пугайтесь)

# postman
Коллекция подготовлена для отработки тестового кейса. После запуска должно сгенерироваться 3 записи:
* в партицию fake
* в партицию fake_2
* в таблицу мусора trash

# newman
`newman run ./postman/elfastahe-hw11-collection.postman_collection.json --verbose --color on`

# проверки
`-- check all records`\
`select`\
`    *`\
`from`\
`    public.crypto_currency_quotes`\
`;`\
`Total query runtime: 16 msec`\
` 2 rows retrieved.`\
\
`-- check fake partition records`\
`select`\
`    *`\
`from`\
`    public.crypto_currency_quotes_fake`\
`;`\
`Total query runtime: 16 msec`\
` 1 rows retrieved.`\
\
`-- check fake_2 partition records`\
`select`\
`    *`\
`from`\
`    public.crypto_currency_quotes_fake_2`\
`;`\
`Total query runtime: 16 msec`\
` 1 rows retrieved.`\
\
`-- check trash records`\
`select`\
`    *`\
`from`\
`    public.crypto_currency_quotes_trash`\
`;`\
`Total query runtime: 16 msec`\
` 1 rows retrieved.`
