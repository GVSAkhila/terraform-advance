variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  
}

variable "sg_name" {
  type        = string
  default     = "allow_ssh"
}

variable "to_port" {
  type        = number
  default     = 22
}

variable "from_port" {
  type        = number
  default     = 22

}

variable "protocol" {
  default     = "tcp"
}


variable "tags" {
    type = map #optional
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

