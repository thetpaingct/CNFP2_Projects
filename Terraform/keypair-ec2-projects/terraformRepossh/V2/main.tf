
data "lcoal_file" "public_key" {
    filename ="${path.module}/.ssh/id_ed25519.pub"
  }

resource "aws_key_pair" "public_key" {
  key_name   = "ssh-public-key"
  public_key = data.lcoal_file.public_key.content
}