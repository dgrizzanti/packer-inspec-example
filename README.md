# Building an AWS AMI with Packer and Ansible

This repository contains an example set of scripts to build an AMI in AWS with using CentOS 7 as a base.

## Usage

In order to run this example, you'll need to fill in a few details in `packer/vars.json`, specifically with a valid VPC and subnet ID to build your EC2 instance in.

Note: The steps below assume you are running in the `us-east-1` region and that you have valid AWS credentials [set up](https://docs.aws.amazon.com/sdk-for-php/v3/developer-guide/guide_credentials_profiles.html).

The "base" AMI that is being used to build this is a CentOS 7 image that is owned/available in the Amazon Marketplace.

## Running

```shell
export AWS_DEFAULT_REGION=us-east-1
export AWS_PROFILE=default
packer build -var-file=packer/vars.json packer/aws.json
```
