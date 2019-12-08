resource "aws_key_pair" "admin" {
    key_name = "admin"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1i8i+iydHBvwPylt2wDOL56cetzGBGbUnRWA2Bdwue1ZzpGzQpjTMFu3XTEjMfhEBCVzyyGwJ8mdfimaBH8HmRID7CNkWpPE7dAz5103eIb+soeP3MQdXpn0Afk8C8oEHswm320DxpEppspdSLIUoVMiQSlV3lL5ZVsNL/kgtUqo0cu8G6xiXsPVNOeVMrzuG91+Of5QBpUsJa+aNORXbusyUUKs/A/hHMN2fXQpZ0KIiFYMwkpGf9jRd14O4/7xXeMo/gftWq3io4Tzcid7igr4TF1m47KJT2Px0AjFM1iobtCL0tSu+8vaYBnh3dZ0UI0VhJhY3FIu4OybPFUNp training\\student@PARIS3-3"
}

resource "aws_instance" "server1" {
    ami = "ami-045fa58af83eb0ff4"
    instance_type = "t2.micro"
    key_name = "admin"
}