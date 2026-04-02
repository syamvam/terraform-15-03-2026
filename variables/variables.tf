
#1. command line arguements
#2. terraform.tfvars
#3. environmental variables, TF_VAR_your_variable_name
#4. default
#5. prompt

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
  
}
variable "instance_type" {
    type = string
  default = "t3.micro"
}

variable "tags" {
  
  type = map

  default = {
    Name= "terraform"
    Project = "expense"
    Component ="backend"
    Environment ="dev"
    Terraform = true

  }

}

variable "sg_name" {
    default = "allow_ssh_terrform"
  
}
variable "from_port" {
  default = 22
  type = number
}

variable "to_port" {
  default = 22
  type = number
}
variable "protocol" {
  default = "tcp"
}

variable "ingress_cidr" {
  type=list(string)
  default = [ "0.0.0.0/0" ]
}