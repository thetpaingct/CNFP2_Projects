# https://developer.hashicorp.com/vault/docs/configuration#storage
# https://developer.hashicorp.com/vault/docs/configuration/storage/raft
# When using the Integrated Storage backend, it is strongly recommended to set disable_mlock to true, and to disable memory swapping on the system.

disable_mlock = true

storage "file" {
  path = "/vault/file"
  # node_id = "node1"
}

# https://developer.hashicorp.com/vault/docs/configuration#listener
# https://developer.hashicorp.com/vault/docs/configuration/listener/tcp

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = true
}

# https://developer.hashicorp.com/vault/docs/configuration#high-availability-parameters
api_addr = "http://vault-server2:8200"
# cluster_addr = "http://vault-server1:8201" #Vault will ignore whatever URL scheme you write in the config and override it with https://. The certificates used with this endpoint are fully managed internally to Vault
# cluster_name = "sg-vault-cluster"

ui = true
log_level = "debug"