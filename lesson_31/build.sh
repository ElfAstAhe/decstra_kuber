echo build integrations microservice docker image
cd ./docker/integrations/v1.1.0
sudo docker build -t elfastahe/integrations:v1.1.0 .
cd ../../..

echo build integrations fake microservice image
cd ./docker/integrations.fake/v1.0.1
sudo docker build -t elfastahe/integrations.fake:v1.0.1 .
cd ../../..

echo build calculations microservice docker image
cd ./docker/calculations/v1.0.0
sudo docker build -t elfastahe/calculations:v1.0.0 .
cd ../../..

echo build calculations fake microservice docker image
cd ./docker/calculations.calc02/v1.0.1
sudo docker build -t elfastahe/calculations.calc02:v1.0.1 .
cd ../../..

echo build publications microservice docker image
cd ./docker/publications/v1.0.0
sudo docker build -t elfastahe/publications:v1.0.0 .
cd ../../..

echo build publications periodic microservice docker image
cd ./docker/publications.periodic/v1.0.1
sudo docker build -t elfastahe/publications.periodic:v1.0.1 .
cd ../../..