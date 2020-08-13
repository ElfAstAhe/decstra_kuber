echo deploy integrations
sudo helm install integrations ./integrations-chart --create-namespace
echo wait 15 seconds
sleep 15s
echo deploy integrations-fake
sudo helm install integrations-fake ./integrations-fake-chart --create-namespace
echo wait 15 seconds
sleep 15s
echo deploy calculations
sudo helm install calculations ./calculations-chart --create-namespace
echo 15 seconds
sleep 15s
echo deploy calculations fake
sudo helm install calculations-calc02 ./calculations-calc02-chart --create-namespace
echo 15 seconds
sleep 15s
echo deploy publications
sudo helm install publications ./publications-chart --create-namespace
echo 15 seconds
sleep 15s
echo deploy publications periodic 5 seconds
sudo helm install publications-periodic-5-s ./publications-periodic-5-s-chart --create-namespace
