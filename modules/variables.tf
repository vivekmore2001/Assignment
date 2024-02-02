variable "P_AMI_ID" {
  type = string
}

variable "P_INSTANCE_TYPE" {
  type = string
}

variable "P_SSH_KEY_NAME" {
  type = string
}
variable "P_SSH_KEY_PAIR" {
  type = string
}

variable "P_SG_NAME" {
  type = string
}
variable "P_HTTP_PORT" {
  type = string
}
variable "P_CIDR_RANGE" {
  type = list(any)
}