#

# DO NOT DELETE THESE LINES!

#

# Your DNSimple email is:

#

#     sethvargo+terraform@gmail.com

#

# Your DNSimple token is:

#

#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF

#

# Your Identity is:

#

#     totaljobs-e4da3b7fbbce2345d7772b0674a318d5

#

provider "dnsimple" {
  token = "sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF"
  email = "sethvargo+terraform@gmail.com"
}

resource "dnsimple_record" "www" {
  domain = "terraform.rocks"
  type   = "A"
  name   = "chris"
  value  = "${aws_instance.web.0.public_ip}"
}
