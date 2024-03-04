variable "aws_region" {
  type        = string
  description = "The AWS region where resources will be created."
  default     = "us-east-1"
}

variable "papercortex_s3_bucket_name" {
  type        = string
  description = "The name of the S3 bucket used for storing papers."
}

variable "project_name" {
  type        = string
  description = "The name of the project. This will be used to prefix AWS resources to ensure unique naming and easier identification."
}

variable "environment" {
  type        = string
  description = "The environment in which the infrastructure is being deployed."
}

variable "application_arn" {
  type        = string
  description = "The ARN (Amazon Resource Name) of the application. This is used to uniquely identify the application across AWS services."
}
