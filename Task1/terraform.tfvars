instances = {
  app1 = {
    instance_type = "t2.micro"
    volume_type   = "gp3"
    volume_size   = 10
    key_name      = "key1"
    owner         = "Rahul"
    environment   = "dev"
  }

  app2 = {
    instance_type = "t3.micro"
    volume_type   = "gp3"
    volume_size   = 20
    key_name      = "key2"
    owner         = "Rahul"
    environment   = "dev"
  }

  app3 = {
    instance_type = "t3.small"
    volume_type   = "gp2"
    volume_size   = 15
    key_name      = "key3"
    owner         = "OpsTeam"
    environment   = "qa"
  }

  app4 = {
    instance_type = "t3.medium"
    volume_type   = "io2"
    volume_size   = 50
    key_name      = "key4"
    owner         = "OpsTeam"
    environment   = "prod"
  }

  app5 = {
    instance_type = "m5.large"
    volume_type   = "gp3"
    volume_size   = 100
    key_name      = "key5"
    owner         = "Admin"
    environment   = "prod"
  }
}
