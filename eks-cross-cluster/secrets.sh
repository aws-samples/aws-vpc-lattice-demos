##!/bin/bash
kubectl create ns apps
kubectl create secret generic postgres-credentials \
--from-literal=POSTGRES_HOST= \
--from-literal=POSTGRES_USER= \
--from-literal=POSTGRES_PASSWORD= \
--from-literal=POSTGRES_DATABASE=amazon \
--from-literal=POSTGRES_PORT=5432 \
--from-literal=POSTGRES_TABLEPREFIX=popularity_bucket_  -n apps





