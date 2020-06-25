sudo kubectl apply -f auth-ingress.yaml
sudo helm install users ./users-chart
sudo helm install auth ./auth-chart