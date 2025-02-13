variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public subnets for web tier"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_app_subnets" {
  description = "Private subnets for application tier"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "private_db_subnets" {
  description = "Private subnets for database tier"
  default     = ["10.0.5.0/24", "10.0.6.0/24"]
}

variable "azs" {
  description = "Availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "web_ami" {
  description = "AMI for web tier instances"
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "app_ami" {
  description = "AMI for application tier instances"
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "web_instance_type" {
  description = "Instance type for web tier"
  default     = "t2.micro"
}

variable "app_instance_type" {
  description = "Instance type for application tier"
  default     = "t2.micro"
}

variable "db_instance_type" {
  description = "Instance type for database tier"
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "Database name"
  default     = "mydb"
}

variable "db_username" {
  description = "Database username"
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  sensitive   = true
}
