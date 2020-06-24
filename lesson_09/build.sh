
cd ./docker/auth/v1.0.0

sudo docker build -t elfastahe/auth:v1.0.0 .

cd ../../..

cd ./docker/users/v1.0.0

sudo docker build -t elfastahe/users:v1.0.0 .

cd ../../..