
#! /bin/sh

        while true
        do
        if [[ $(kubectl --kubeconfig=./kubeconfig.yaml -n default get svc accounts-db -o jsonpath="{ .status.loadBalancer.ingress[0].ip}") != "" ]]; then
          break
        fi
        done
        accounts_db_ip=$(kubectl --kubeconfig=./kubeconfig.yaml -n default get svc accounts-db -o jsonpath="{ .status.loadBalancer.ingress[0].ip}")
        echo ${accounts_db_ip}
        sed -i "s/ACCOUNTS_DB_IP/${accounts_db_ip}/g"  ./config.yaml