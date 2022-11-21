variable "region" {
    type = string
    default = "eastus2" # ist der Wert, der standarmäßig für die Region eingesetzt wird
    nullable = false # Wert darf nicht leer sein; wenn leer, dann terminiert der Ablauf
    description = "Region where the web app is deployed"
}