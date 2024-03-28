output "vpcid" {
  value = nhncloud_networking_vpc_v2.demo-vpc.id
}

output "instance-access-ip" {
  value = nhncloud_compute_instance_v2.demo-instance.access_ip_v4
}

output "instance-fixed-ip" {
  value = nhncloud_compute_instance_v2.demo-instance.network[0].fixed_ip_v4
}
