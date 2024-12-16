variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}

variable "zone_id" {
  default = "Z01316222EKW2Z4MH7HQT"
}

variable "domain_name" {
  default = "joinsankardevops.online"

}

