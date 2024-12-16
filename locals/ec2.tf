resource "aws_instance" "terraform" {
    ami = data.aws_ami.ami_info.id
}