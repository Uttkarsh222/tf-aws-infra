variable "aws_profile" {
  description = "The AWS profile to use"
  type        = string

}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones to deploy the subnets"
  type        = list(string)
}

variable "AWS_REGION" {
  description = "The AWS region to deploy resources in"
  type        = string

}
variable "ami" {
  description = "AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "application_port" {
  description = "The port number used by the application"
  type        = number
}

variable "common_cidr_block" {
  description = "Common CIDR block for accessible IPs"
  type        = string
  default     = "0.0.0.0/0"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "db_engine" {
  description = "The database engine to use"
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine to use"
  type        = string
}

variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database user"
  type        = string
  sensitive   = true
}

variable "root_volume_size" {
  description = "The size of the root volume for the EC2 instance"
  type        = number
  default     = 25 # Or any value you prefer
}

variable "root_volume_type" {
  description = "The type of the root volume for the EC2 instance"
  type        = string
  default     = "gp2" # Or any value you prefer
}

variable "domain_name" {
  description = "The domain name to be used for creating DNS records"
  type        = string
}

variable "route53_zone_id" {
  description = "Route 53 Hosted Zone"
  type        = string
}

variable "environment" {
  description = "environment (dev/demo)"
  type        = string
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to be used with AWS resources."
  type        = string
}

variable "key_name" {
  description = "The key pair name for EC2 instances"
  type        = string
}

# Auto Scaling Group capacity settings
variable "asg_desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "asg_min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
  default     = 1
}

# CPU utilization thresholds for scaling
variable "scale_up_threshold" {
  description = "CPU utilization threshold to trigger scale-up"
  type        = number
  default     = 9
}

variable "scale_down_threshold" {
  description = "CPU utilization threshold to trigger scale-down"
  type        = number
  default     = 7.5
}

variable "lambda_s3_key" {
  description = "S3 key for the Lambda function zip file"
  type        = string
  default     = "path/to/your/lambda.zip" # You can set a default or require this to be passed in
}

variable "sendgrid_api_key" {
  type        = string
  description = "API key for SendGrid"
}

variable "jwt_secret" {
  type        = string
  description = "Secret key for JWT"
}

variable "verification_link_base" {
  type        = string
  description = "Base URL for email verification link"
}

variable "from_email" {
  type        = string
  description = "Email address to send from"
}

variable "lambda_filename" {
  description = "Local path to the Lambda zip file"
  type        = string
}

