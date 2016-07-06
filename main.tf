BIG SAVANT SAUSAGE

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {
  default = "eu-central-1"
}

output "public_dns" {
  value = "${join("\n", aws_instance.web.*.public_dns)}"
}

resource "aws_instance" "web" {
  ami                    = "ami-74ee001b"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-9e15f8f6"
  vpc_security_group_ids = ["sg-dca200b4"]

  tags {
    Identity        = "totaljobs-e4da3b7fbbce2345d7772b0674a318d5"
    Name            = "Chris box"
    StreamingServer = "foo"
    LetsUpdate      = "hello"
  }

  count = 1
}
