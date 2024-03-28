# Test VPC
resource "nhncloud_networking_vpc_v2" "demo-vpc" {
  name = "demo-vpc"
  cidrv4 = "10.0.0.0/16"
}

# private routing table
resource "nhncloud_networking_routingtable_v2" "demo-priv-rt" {
  name = "demo-priv-rt"
  vpc_id = nhncloud_networking_vpc_v2.demo-vpc.id
  distributed = false
}

# public routing table
resource "nhncloud_networking_routingtable_v2" "demo-pub-rt" {
  name = "demo-pub-rt"
  vpc_id = nhncloud_networking_vpc_v2.demo-vpc.id
  distributed = false
}

# private subnet
resource "nhncloud_networking_vpcsubnet_v2" "demo-priv-subnet" {
  name      = "demo-priv-subnet"
  vpc_id    = nhncloud_networking_vpc_v2.demo-vpc.id
  cidr      = "10.0.2.0/24"
  routingtable_id = nhncloud_networking_routingtable_v2.demo-priv-rt.id
}

# public subnet
resource "nhncloud_networking_vpcsubnet_v2" "demo-pub-subnet" {
  name      = "demo-pub-subnet"
  vpc_id    = nhncloud_networking_vpc_v2.demo-vpc.id
  cidr      = "10.0.1.0/24"
  routingtable_id = nhncloud_networking_routingtable_v2.demo-pub-rt.id
}
