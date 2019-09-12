#!/usr/bin/env bash

gcloud config set project gcpdemosbmongeon
gcloud container clusters get-credentials mockazon --project gcpdemosbmongeon
# gcloud auth configure-docker