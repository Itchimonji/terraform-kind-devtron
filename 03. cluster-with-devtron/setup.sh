#!/usr/bin/env sh

set -e

terraform init
terraform apply -auto-approve & (sleep 120 && kubectl apply -f devtron_ingress.yaml)

printf "\nYou should see the Devtron login page as a response below:\n"
curl http://localhost/
