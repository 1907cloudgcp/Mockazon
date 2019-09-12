#!/usr/bin/env bash

gcloud config set project gcpdemosbmongeon
gcloud container clusters get-credentials mockazon --region us-central1 --project gcpdemosbmongeon
# gcloud auth configure-docker