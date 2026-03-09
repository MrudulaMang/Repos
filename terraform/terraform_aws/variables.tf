variable "project"{
    type = string
}

variable "instance_type"{
     type = "t3.micro"
}

variable "environment"{
    type = string
}

variable "sg_ids"{
    type = list(string)
}

variable "tags" {
    type = map
    default = {}
}