echo 'switch project directory'
cd /home/elf/NetBeansProjects/decstra_kuber/lesson_31
echo 'switch minikube context and namespace'
sudo kubectl config set-context --current --namespace=hsh
echo 'remove pvc integrations ..'
sudo kubectl delete pvc data-postgres-integrations-0
sudo kubectl delete pvc data-postgres-integrations-fake-0
echo 'remove pvc calculations'
sudo kubectl delete pvc data-postgres-calculations-0
sudo kubectl delete pvc data-postgres-calculations-calc02-0
echo 'remove pvc publications'
sudo kubectl delete pvc data-postgres-publications-0
sudo kubectl delete pvc data-postgres-publications-periodic-5-s-0
echo 'remove all pv'
sudo kubectl delete pv --all
