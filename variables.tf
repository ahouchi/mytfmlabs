variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default     = "ami-2e1ef954"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default     = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default     = "Provisioned by Terraform"
}

variable "sshpubkey" {
  description = "ssh pubkey"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDB3n7QFj4wWneCLvjGiftl/g1mSxsds145KNQXj+VsamaFztjTObLkD2nq9960v4OvSSn4zQ23zN4XTfYZPfFX1XQhmLZIp6XfyFl56ATazjJeG19YQaXIAwMoDIWm7Ct3XstQ1spby3cEzAXqPSJT2AQi+FhJNJ3QlwIfMmKnlhNgxrdTH5l/FnhafLLWYcQW6S+dRMnACVNpn96ZrxmkGwDfLYixppaac+nCd509w9EvnKpRarKn/Zoxq0SkmfsC7IRE+CM8EHpMJEi4/cZM7W+EJJqVX8maZk6SeEkeSrjDLqThXnRYuHtpi4DeFctaZWh1BOd3UdN4aZZyGv5LMo2MQeLGlJaXt2l8M7u9GoFR9WjpQWDAP4Trgw19aZBPmQHvWjMOLohPVT28fwEu3RTCMqikw4BGHu5D31BKwdRctmpLE6X6GTKsqqVf4Qj2GxDZbzTJBq8tfNY2u1WA41TtoLIYOR0HU583601VNMHAakKRdLd//fzXiqjNXFU= kader@KADMSI2021"
}
