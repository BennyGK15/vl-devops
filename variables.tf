variable "region" {
    type = string
    default = "eastus2" # muss array-like sein
    nullable = false
    description = "Region where the web app is deployed"
}