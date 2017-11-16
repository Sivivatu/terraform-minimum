variable "username" {}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "Changed to: ${random_id.random.hex}"
}

output "username" {
  value = "Username is ${var.username}"
}
