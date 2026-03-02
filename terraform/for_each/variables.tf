variable "instances" {
    type = map
    default = {
        mongodb = "t3.small"
        mysql = "t3.small"
        catalouge = "t3.micro"
    }
}