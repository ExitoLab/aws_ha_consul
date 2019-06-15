resource "aws_instance" "consul_servers" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = "${var.consul_instance_type}"
    #count = "${var.count_consul_servers}"
    count = 3
    availability_zone = "${element(data.aws_availability_zones.azs.names, count.index)}"

    vpc_security_group_ids = [
        "${aws_security_group.consul.id}"
    ]

    tags =  {
        Name = "${var.consul_tag_name}-${count.index+1}"
        Environment = "production"
        Role = "consul"
    }

}
