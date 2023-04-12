provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "name" {
  bucket = var.bucket_name

  tags = var.tags
}


# resource "local_file" "file-block1" {
#   count=4
#   filename="hello.py"
#   content = "Random content"
# }



resource "local_file" "file-block1" {
  count=length(var.name)
  filename=var.name[count.index]
  content = "Random content"
}