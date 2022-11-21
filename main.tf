terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm" # wo zu finden
            version = "~> 3.0.2" # welche Version - biszum nächsten major
        }
    }
    required_version = ">= 1.0.0" # welche terraform version
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg-dhbw-devops" { # drauf referenzierbar
    name = "rg-dhbw-devops" # Ressourcen-Name
    location = var.region # wo die Ressource sein soll
}

resource "azurerm_service_plan" "app-service-plan" { # Name des Skriptes
    name = "plan-dhbw" # Name der Azure Ressource
    resource_group_name = azurerm_resource_group.rg-dhbw-devops.name # Verweis auf Ressourcen-Gruppe
    location = azurerm_resource_group.rg-dhbw-devops.location # Location
    sku_name = "F1" # kostenfreier Test-Plan
    os_type = "Linux" # "Kernel-Info"
}

resource "azurerm_linux_web_app" "app" {
    name = "app-dhbw-test-ESB" # Name - muss eindeutig sein
    resource_group_name = azurerm_resource_group.rg-dhbw-devops.name
    location = azurerm_resource_group.rg-dhbw-devops.location
    service_plan_id = azurerm_service_plan.app-service-plan.id

    site_config {
        always_on = false # Standardmäßig auf true; kann beim Free-Plan nicht true sein
        application_stack {
            docker_image = "benesenwein/devops-python-flask-webapp"
            docker_image_tag = "latest"
        }
    }
}