echo 'switch project directory'
cd /home/elf/NetBeansProjects/decstra_kuber/lesson_31
echo 'switch minikube context and namespace'
sudo kubectl config set-context --current --namespace=hsh

sudo kubectl config view
