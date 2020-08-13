echo '================================================='
echo 'request integrations metrics'
echo '================================================='
echo 'request system metrics'
curl --request GET 'http://arch.homework/integr/api/v1/metrics/system'
echo
echo '================================================='
echo 'request vendor metrics'
curl --request GET 'http://arch.homework/integr/api/v1/metrics/vendor'
echo
echo '================================================='
echo 'request application metrics'
curl --request GET 'http://arch.homework/integr/api/v1/metrics/application'
echo
echo '================================================='
echo 'request all metrics'
curl --request GET 'http://arch.homework/integr/api/v1/metrics'
echo

echo '================================================='
echo 'request integrations fake metrics'
echo '================================================='
echo 'request system metrics'
curl --request GET 'http://arch.homework/integr.fake/api/v1/metrics/system'
echo
echo '================================================='
echo 'request vendor metrics'
curl --request GET 'http://arch.homework/integr.fake/api/v1/metrics/vendor'
echo
echo '================================================='
echo 'request application metrics'
curl --request GET 'http://arch.homework/integr.fake/api/v1/metrics/application'
echo
echo '================================================='
echo 'request all metrics'
curl --request GET 'http://arch.homework/integr.fake/api/v1/metrics'
echo

echo '================================================='
echo 'request calculations metrics'
echo '================================================='
echo 'request system metrics'
curl --request GET 'http://arch.homework/calc/api/v1/metrics/system'
echo
echo '================================================='
echo 'request vendor metrics'
curl --request GET 'http://arch.homework/calc/api/v1/metrics/vendor'
echo
echo '================================================='
echo 'request application metrics'
curl --request GET 'http://arch.homework/calc/api/v1/metrics/application'
echo
echo '================================================='
echo 'request all metrics'
curl --request GET 'http://arch.homework/calc/api/v1/metrics'
echo

echo '================================================='
echo 'request calculations fake metrics'
echo '================================================='
echo 'request system metrics'
curl --request GET 'http://arch.homework/calc.fake/api/v1/metrics/system'
echo
echo '================================================='
echo 'request vendor metrics'
curl --request GET 'http://arch.homework/calc.fake/api/v1/metrics/vendor'
echo
echo '================================================='
echo 'request application metrics'
curl --request GET 'http://arch.homework/calc.fake/api/v1/metrics/application'
echo
echo '================================================='
echo 'request all metrics'
curl --request GET 'http://arch.homework/calc.fake/api/v1/metrics'
echo

echo '================================================='
echo 'request publications metrics'
echo '================================================='
echo 'request system metrics'
curl --request GET 'http://arch.homework/publ/api/v1/metrics/system'
echo
echo '================================================='
echo 'request vendor metrics'
curl --request GET 'http://arch.homework/publ/api/v1/metrics/vendor'
echo
echo '================================================='
echo 'request application metrics'
curl --request GET 'http://arch.homework/publ/api/v1/metrics/application'
echo
echo '================================================='
echo 'request all metrics'
curl --request GET 'http://arch.homework/publ/api/v1/metrics'
echo

echo '================================================='
echo 'request publications periodic 5 seconds metrics'
echo '================================================='
echo 'request system metrics'
curl --request GET 'http://arch.homework/publ.periodic.5s/api/v1/metrics/system'
echo
echo '================================================='
echo 'request vendor metrics'
curl --request GET 'http://arch.homework/publ.periodic.5s/api/v1/metrics/vendor'
echo
echo '================================================='
echo 'request application metrics'
curl --request GET 'http://arch.homework/publ.periodic.5s/api/v1/metrics/application'
echo
echo '================================================='
echo 'request all metrics'
curl --request GET 'http://arch.homework/publ.periodic.5s/api/v1/metrics'
echo
