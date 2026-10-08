output "instance_ids" {
  value = {
    for k, v in aws_instance.ec2 :
    k => v.id
  }
}

output "private_ips" {
  value = {
    for k, v in aws_instance.ec2 :
    k => v.private_ip
  }
}
