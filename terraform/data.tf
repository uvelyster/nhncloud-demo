data "nhncloud_images_image_v2" "ubuntu" {
  name = "Ubuntu Server 20.04.6 LTS (2024.02.20)"
  most_recent = true
}

data "nhncloud_compute_flavor_v2" "t2c1m1"{
  name = "t2.c1m1"
}
