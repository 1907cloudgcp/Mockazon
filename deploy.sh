# deploy.sh
#!/bin/sh

# Install kubernetes and set config

# if [ ! -d "$HOME/google-cloud-sdk/bin" ]; then
#   rm -rf "$HOME/google-cloud-sdk"
#   curl https://sdk.cloud.google.com | bash > /dev/null
# fi

sudo apt-get install google-cloud-sdk

source $HOME/google-cloud-sdk/path.bash.inc

# # yes | gcloud components update
yes | gcloud components install kubectl

# gcloud auth activate-service-account --key-file=gcpdemosbmongeon-e25e1414c004.json

# gcloud config set project gcpdemosbmongeon
# gcloud container clusters get-credentials mockazon --zone us-central1-a --project gcpdemosbmongeon
gcloud auth configure-docker

docker build -t gcr.io/gcpdemosbmongeon/mockazon:v1.0
docker push gcr.io/gcpdemosbmongeon/mockazon:v1.0
echo "k8s.yml"
kubectl apply -f k8s.yml