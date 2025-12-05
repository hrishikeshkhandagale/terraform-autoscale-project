variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project prefix"
  type        = string
  default     = "static-autoscale"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
variable "key_name" {
  description = "EC2 key pair for SSH access"
  type        = string
  default     = "ovi"
}


variable "min_size" {
  type        = number
  default     = 1
}

variable "desired_capacity" {
  type        = number
  default     = 1
}

variable "max_size" {
  type        = number
  default     = 3
}


variable "github_repo_url" {
  description = "Static website GitHub repository"
  type        = string
  default     = "https://github.com/hrishikeshkhandagale/terraform-autoscale-project.git"
}

variable "alert_email" {
  description = "Email for SNS alerts"
  type        = string
  default     = "khandagalehrishikesh7@gmail.com"
}


variable "app_version" {
  description = "Dummy version to force LT refresh (set from Jenkins BUILD_ID)"
  type        = string
  default     = "v1"
}
