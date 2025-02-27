resource "aws_key_pair" "public_key" {
  key_name   = "ssh-public-key"
  public_key = file("/Users/sulailaipine/.ssh/id_ed25519.pub")
}