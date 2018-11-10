#!/usr/bin/env bash

# default values
export OS_AUTH_URL=https://auth.cloud.ovh.net/v3
export OS_INTERFACE=public
export OS_IDENTITY_API_VERSION=3
export OS_PROJECT_DOMAIN_ID="default"
export OS_USER_DOMAIN_NAME="Default"

# unset v2.0 items in case set
unset OS_TENANT_ID
unset OS_TENANT_NAME

# OVH doesn't need to specify project ID and name
unset OS_PROJECT_ID
unset OS_PROJECT_NAME

# vars from input
echo "OVH OpenStack Username: "
read OS_USERNAME
export OS_USERNAME

echo "Password: "
read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT

echo "Region: "
read OS_REGION_NAME
export OS_REGION_NAME
# Don't leave a blank variable, unset it if it was empty
if [ -z "$OS_REGION_NAME" ]; then unset OS_REGION_NAME; fi
