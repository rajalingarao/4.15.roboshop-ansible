variable "allow_all" {
   type = string
   default = "sg-088bbd993cbc52b59"
}
variable "zone_id" {
    default = "Z012785114HGZTDQ8KSQH"
}
variable "domain_name" {
  default = "lithesh.shop"
}
variable "instances" {
  type        = map
  default     = {
    mongodb   = "t3.small"
    redis     = "t3.micro"
    mysql     = "t3.medium"
    rabbitmq  = "t3.micro"
    catalogue = "t3.micro"
    user      = "t3.micro"
    cart      = "t3.micro"
    shipping  = "t3.medium"
    payment   = "t3.micro"
    dispatch  = "t3.micro"
    frontend  = "t3.micro"
  }
}

variable "ansible_master" {
   default = {
        instance_type  = "t2.micro"
   }
}