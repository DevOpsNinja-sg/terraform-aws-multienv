variable "environment" {
    description = "The environment for the infrastructure (e.g., Dev, Test, Prod)"
    type = string
  
}

variable "bucket_name" {
    description = "The name of the S3 bucket"
    type = string
  
}

variable "instance_count" {
    description = "The number of EC2 instances to create"
    type = number
}

variable "instance_type" {
    description = "The type of EC2 instance to create"
    type = string
  
}

variable "ec2_ami_id" {
    description = "The AMI ID for the EC2 instance"
    type = string
    #default = "ami-0e35ddab05955cf57"
  
}
variable "hash_key" {
    description = "The hash key for the DynamoDB table"
    type = string
  
}