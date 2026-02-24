variable "region" {
    default = "ap-south-1"
  
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
  
}

variable "project_name" {
    default = "my_project"
  
}

variable "pvt_cidr" {
    default = "10.0.0.0/20"
  
}

variable "az1" {
    default ="ap-south-1a" 
  
}

variable "public_cidr" {
    default = "10.0.16.0/20"
  
}

variable "az2" {
    default ="ap-south-1b" 
  
}

variable "idw_cidr" {
    default = "0.0.0"
  
}

variable "ami" {
    default = "ami-051a31ab2f4d498f5"
  
}

variable "instance_type" {
    default = "t3.micro"
  
}
variable "key" {
    default = "tera"
  
}
