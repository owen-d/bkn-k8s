#!/bin/bash

if [[ -z $LEGO_EMAIL ]]
then
    echo "requires LEGO_EMAIL"
    exit 1
fi

helm install --name letsencrypt --values values.yaml --set config.LEGO_EMAIL=$LEGO_EMAIL --namespace kube-lego stable/kube-lego
