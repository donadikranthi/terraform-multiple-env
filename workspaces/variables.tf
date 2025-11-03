variable "project" {
    default = "roboshop"
    }
    
variable "environment" {
    type    = map
    default ={
      dev  = "dev"
      prod = "prod"
    }
}
variable "ami_id" {
    type    = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type    = map
    default = {
      dev  = "t3.micro"
      prod = "t3.small"
    }
}

 variable "cidr"{
    type = list
    default = ["0.0.0.0/0"]
    description = "CIDR blocks for security group"

}

variable "ingress_from_port" {
  type        = number
  default     = 0
  description = "Starting port for ingress rule"
}
variable "ingress_to_port" {
  type        = number
  default     = 0
  description = "Ending port for ingress rule"
}

variable "egress_from_port" {
  type        = number
  default     = 0
  description = "Starting port for egress rule"
}       

variable "egress_to_port" {
  type        = number
  default     = 0
  description = "Ending port for egress rule"
}   

variable "protocol" {
  type        = string
  default     = "-1"
  description = "Protocol for security group rules"
}