# Create a web instance
resource "aws_instance" "web1" {
    ami = "ami-04de2b60dd25fbb2e"
    instance_type = "t2.micro"
    # VPC
    subnet_id = aws_subnet.private-subnet1.id
    # Security Group
    vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
    # the Public SSH key
    key_name = aws_key_pair.london-region-key-pair.id
    # nginx installation
    
}
// Sends your public key to the instance
#resource "aws_key_pair" "london-region-key-pair" {
#    key_name = "london-region-key-pair"
#    public_key = "${file(var.PUBLIC_KEY_PATH)}"
#}
// Sends your public key to the instance
resource "aws_key_pair" "london-region-key-pair" {
    #key_name = "london-region-key-pair"
    #public_key = "${file(var.PUBLIC_KEY_PATH)}"
    key_name = "london-region-key-pair"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1i8i+iydHBvwPylt2wDOL56cetzGBGbUnRWA2Bdwue1ZzpGzQpjTMFu3XTEjMfhEBCVzyyGwJ8mdfimaBH8HmRID7CNkWpPE7dAz5103eIb+soeP3MQdXpn0Afk8C8oEHswm320DxpEppspdSLIUoVMiQSlV3lL5ZVsNL/kgtUqo0cu8G6xiXsPVNOeVMrzuG91+Of5QBpUsJa+aNORXbusyUUKs/A/hHMN2fXQpZ0KIiFYMwkpGf9jRd14O4/7xXeMo/gftWq3io4Tzcid7igr4TF1m47KJT2Px0AjFM1iobtCL0tSu+8vaYBnh3dZ0UI0VhJhY3FIu4OybPFUNp training\\student@PARIS3-3"
}

