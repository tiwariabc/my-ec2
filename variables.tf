variable "aws_region" {
  description = "provide aws region"
  type        = string
  default     = "ap-south-1"
}
variable "zone"{
    description =" name of zone"
    type = string
    default ="ap-south-1a"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default = "ami-02d26659fd82cf299"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
  default = "value"
}


variable "tags" {
  description = "Tags to assign to the instance"
  type        = map(string)
  default     = {}
}
