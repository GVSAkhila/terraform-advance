variable "instance_names" {
  type    = list(string)
  default = ["mysql", "frontend", "backend"]
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}


variable "zone_id" {

  default     = "Z01316222EKW2Z4MH7HQT"

}


variable "domain_name" {
    default = "joinsankardevops.online"
}