variable "instanaces" {
  type        = map 
  default     =  {
    mysql =  "t3.small"
    frontend = "t3.micro"
    backend =  "t3.micro"
  }
}


variable "zone_id" {
  default = "Z01316222EKW2Z4MH7HQT"
}

variable "domain_name" {
  default = "joinsankardevops.online"

}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
    }
}

variable "tags" {
   type = map
}

variable "environment" {
 
}

