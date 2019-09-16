# Disaster Recovery Plan

In the event that the production environment fails to deploy services to users, a disaster recovery plan is in place to ensure that the services will be available. The production environment currently runs in the us-central region, while the disaster recovery environment will be able to be run in the us-east region.

## Needed Components:

### SQL Database:
The PostgreSQL database automatically creates a backup every day. The database is also exported and saved onto the Cloud Storage bucket “mocksqldump” every day at 1:00 am. This is done through a cron job running on the vm instance “cron-job.” The backup can be downloaded from the bucket should the database need to be recovered. Since Cloud Storage buckets can be accessed from any region, regional downtimes should not affect the backup database being stored.

### Container Image:
Every time Travis runs and creates a build, the container image gets stored into the Container Registry, which is accessible from any region. The image also gets stored to Docker Hub every build, creating another cold storage location for the image.

### Deployment:
Should the application need to be deployed in the us-east region due to the us-central region being down, then we can deploy the Mockazon service using the container image on the Kubernetes cluster “mockazon-clone,” which is located in us-east1. Use the container image from the Container Registry. For the database, import the backup SQL database into the us-east1 region, and configure the deployment to run with this database.
