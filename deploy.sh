#!/usr/bin/env bash

#docker build -t gcr.io/gcpdemosbmongeon/mockazon:v1.0
#docker push gcr.io/gcpdemosbmongeon/mockazon:v1.0
yes | gcloud components install kubectl
kubectl apply -f k8s.yml