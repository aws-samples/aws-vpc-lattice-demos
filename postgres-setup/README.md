#### Setting up PostgreSQL database
Setup an instance of Aurora/RDS PostgreSQL </br>
Use the CLI commands from the script **postgres-setup/setup.sh** to run DML and DDL changes to the database. </br>
Make sure that the database credentials are correctly reflected in the script **secrets.sh**

#### Build & Deploy
Build the application using **build.sh** </br>
Run the script **secrets.sh** to setup a Kubernetes Secret with relevant keys referenced by the K8s deployment manifest </br>
Use the K8s deployment manifest **deployment-backend.yaml** to deploy to EKS

