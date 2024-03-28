resource "nhncloud_networking_secgroup_v2" "demo-sg" {
  name      = "demo-sg"
}

resource "nhncloud_compute_instance_v2" "demo-instance"{
  name = "instance_01"
  region    = "KR1"
  key_pair  = "demo"
  image_id = data.nhncloud_images_image_v2.ubuntu.id
  security_groups = ["demo-sg"]
  availability_zone = "kr-pub-a"
  flavor_id = data.nhncloud_compute_flavor_v2.t2c1m1.id
  network {
    name = nhncloud_networking_vpc_v2.demo-vpc.name
    uuid = nhncloud_networking_vpc_v2.demo-vpc.id
  }

  block_device {
    uuid                  = data.nhncloud_images_image_v2.ubuntu.id
    source_type           = "image"
    destination_type      = "volume"
    boot_index            = 0
    volume_size           = 20
    delete_on_termination = true
  }
}
