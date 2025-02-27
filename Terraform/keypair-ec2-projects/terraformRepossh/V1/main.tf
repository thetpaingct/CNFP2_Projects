resource "aws_key_pair" "public_key" {
  key_name   = "ssh-public-key"
  public_key = "ssh-ed2551aPro.local"
}