#!/bin/bash -eu

# Variables always required
export GITHUB_CLIENT_ID=$github_login_client_id
export GITHUB_CLIENT_SECRET=$github_login_client_secret
export COGNITO_REDIRECT_URI=https://dev.auth.uclusion.com/oauth2/idpresponse

# Variables required if used with GitHub Enterprise
# GITHUB_API_URL=# https://<GitHub Enterprise Host>/api/v3
# GITHUB_LOGIN_URL=# https://<GitHub Enterprise Host>

# Variables required if Splunk logger is used
# SPLUNK_URL=# https://<Splunk HEC>/services/collector/event/1.0
# SPLUNK_TOKEN=# Splunk HTTP Event Collector token
# SPLUNK_SOURCE=# Source for all logged events
# SPLUNK_SOURCETYPE=# Sourcetype for all logged events
# SPLUNK_INDEX=# Index for all logged events

# Variables required if deploying with API Gateway / Lambda
export BUCKET_NAME=congito-github-wrapper-bucket-dev # An S3 bucket name to use as the deployment pipeline
export STACK_NAME=cognito-github-openid-wrapper # The name of the stack to create
export REGION=us-west-2 # AWS region to deploy the stack and bucket in
export STAGE_NAME=dev # Stage name to create and deploy to in API gateway
