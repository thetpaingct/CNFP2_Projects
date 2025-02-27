resource "aws_key_pair" "public_key" {
  key_name   = "ssh-public-key"
  public_key = file("${path.module}/.ssh/id_ed25519.pub")
}