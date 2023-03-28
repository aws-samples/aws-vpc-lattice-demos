##!/bin/bash
CLUSTER_NAME="EKS-CLUSTER-B"
REGION=us-west-2
SERVICE_ACCOUNT_NAMESPACE=apps
SERVICE_ACCOUNT_NAME=aws-sigv4-client
SERVICE_ACCOUNT_IAM_ROLE=aws-sigv4-client
SERVICE_ACCOUNT_IAM_POLICY_NAME=VPCLatticeClientPolicy
SERVICE_ACCOUNT_IAM_POLICY_ARN=arn:aws:iam::937351930975:policy/$SERVICE_ACCOUNT_IAM_POLICY_NAME

aws iam create-policy --policy-name $SERVICE_ACCOUNT_IAM_POLICY_NAME --policy-document file://lattice-client-policy.json

eksctl create iamserviceaccount \
--cluster=$CLUSTER_NAME \
--region=$REGION \
--namespace=$SERVICE_ACCOUNT_NAMESPACE \
--name=$SERVICE_ACCOUNT_NAME \
--role-name=$SERVICE_ACCOUNT_IAM_ROLE \
--attach-policy-arn=$SERVICE_ACCOUNT_IAM_POLICY_ARN \
--role-only \
--approve

eksctl utils associate-iam-oidc-provider \
--cluster=$CLUSTER_NAME \
--approve