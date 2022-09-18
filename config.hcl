ui = true
storage "file" {
   path    = "/Users/viniciuschagas/Downloads/DEV/bevel/data"
}
listener "tcp" {
   address     = "0.0.0.0:8200"
   tls_disable = 1
}