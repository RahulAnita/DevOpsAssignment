variable "instances" {
  description = "EC2 instance configurations"
  type = map(object({
    instance_type = string
    volume_type   = string
    volume_size   = number
    key_name      = string
    ami_id        = string
  }))
}

variable "environment" {
  type = string
}

variable "owner" {
  type = string
}