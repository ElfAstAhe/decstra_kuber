sudo helm install integrations ./integrations-chart --create-namespace
sudo helm install integrations-fake ./integrations-fake-chart --create-namespace
sudo helm install calculations ./calculations-chart --create-namespace
sudo helm install calculations-calc02 ./calculations-calc02-chart --create-namespace
sudo helm install publications ./publications-chart --create-namespace
sudo helm install publications-periodic ./publications-periodic-chart --create-namespace
