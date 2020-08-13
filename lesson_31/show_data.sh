echo '================================================='
echo request last values from integrations
curl --request GET 'http://arch.homework/integr/api/v1/last/cryptoCurrencyQuote/all'
echo
echo '================================================='
echo request last values from calculations
curl --request GET 'http://arch.homework/calc/api/v1/last/calculation/all'
echo
echo '================================================='
echo request last values from publications
curl --request GET 'http://arch.homework/publ/api/v1/last/publication/all'
echo