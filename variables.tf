variable "app_name" {
  description = "Mi aplicación de ejemplo"
  type        = string
  default     = "miapp"
  validation {
    condition     = length(var.app_name) >= 3
    error_message = "El nombre de la aplicación debe tener al menos 3 caracteres."
  }
}

variable "environment" {
  description = "Entorno de despliegue: dev, staging o prod"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "El entorno debe ser uno de: dev, staging, prod"
  }
}

variable "instance_count" {
  description = "Numero de instancias para este entorno"
  type        = number
  default     = 1
  validation {
    condition     = var.instance_count >= 1 && var.instance_count <= 5
    error_message = "instance_count debe estar entre 1 y 5"
  }
}

