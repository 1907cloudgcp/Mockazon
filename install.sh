# install.sh
#!/bin/sh

# Install kubernetes and set config
yes | gcloud components update
yes | gcloud components install kubectl