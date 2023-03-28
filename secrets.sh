##!/bin/bash
kubectl create ns apps
kubectl create secret generic postgres-credentials \
--from-literal=POSTGRES_USER=sarathy \
--from-literal=POSTGRES_PASSWORD=Cat3in99 \
--from-literal=POSTGRES_DATABASE=amazon \
--from-literal=POSTGRES_HOST=amazon.cvd1dap4fpfm.us-west-2.rds.amazonaws.com \
--from-literal=POSTGRES_PORT=5432 \
--from-literal=POSTGRES_TABLEPREFIX=popularity_bucket_  -n apps





