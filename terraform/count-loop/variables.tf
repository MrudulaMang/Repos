variable "instances" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","frontend"]
}

# zoneid
# domain_name

# list datatype : output is as is and maitains the order
variable "fruits" {
    type=list(string)
    default = ["apple","banana","apple","orange"]
}


# set datatype : duplicates will be removed in the output
variable "fruits_set" {
    type=set(string)
    default = ["apple","banana","apple","orange"]
}