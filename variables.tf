variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f" 
}

variable "sg_id" {
  
}


variable "instance_type" {
  type        = string
  default     = "t3.micro"
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Valid values for var: instance type are (t3.micro, t3.small, t3.medium) "
  } 

}

variable "tags" {
 default = {}
}
