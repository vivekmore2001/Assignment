variable "sg_ports" {
  type        = list
  description = "list of ingress ports"
  default     = [8080, 80,21, 22, 443]
}

variable "CIDR" {
  type        = list
  default     = ["0.0.0.0/0"]
}
