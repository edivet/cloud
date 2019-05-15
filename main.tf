provider "scaleway" {
  region = "ams1"
}

data "scaleway_image" "terraform" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "terraform" {
  name  = "terraform"
  image = "${data.scaleway_image.terraform.id}"
  type  = "START1-S"
}
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.terraform.id}"
}


resource "scaleway_volume" "terraform" {
  name       = "terraformvolume"
  size_in_gb = 50
  type       = "l_ssd"
}
