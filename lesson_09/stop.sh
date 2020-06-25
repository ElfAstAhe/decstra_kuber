sudo helm uninstall users
sudo helm uninstall auth
sudo kubectl delete ingress auth
sudo kubectl delete ingress users
sudo kubectl delete auth-proxy