variable "region" {
  default="ap-south-1"
}

variable "bucket_name" {
  type = string
  default = "komal-s3bucket"
}

variable "tags" {
  type = map
  default = {
    environment="DEV"
    terraform= "true"
  }
}