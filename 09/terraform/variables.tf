###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_family_nexus" {
  type = string
  default = "centos-7"
  description = "image for netology nexus"
}

variable "vm_family" {
  type = string
  default = "container-optimized-image"
  description = "image for teamcity"
}

variable "vm_web_platform_id" {
  type = string
  default = "standard-v1"
  description = "default platform with 5 percent cpu time enabled"
}

variable "vm_web_metadata" {
 type = map(any)
 description = "vm metadata task2"
}

variable "vm_teamcity_resources" {
 type = map(any)
 description = "vm teamcity resources"
}

variable "vm_agent_resources" {
 type = map(any)
 description = "vm teamcity resources"
}

variable "vm_username" {
  type = string
  default = "ubuntu"
  description = "root username"
}
