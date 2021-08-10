#!  /bin/sh

while true
do
if [[ $(kubectl -n default get svc accounts-db -o jsonpath="{ .status.loadBalancer.ingress[0].ip}") != "" ]]; then
  break
fi
done
test=$(kubectl -n default get svc accounts-db -o jsonpath="{ .status.loadBalancer.ingress[0].ip}")
echo $test
