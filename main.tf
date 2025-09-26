terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "random_id" "project_id" {
  byte_length = 8
}

resource "local_file" "config_file" {
  filename = "templates/${local.prefix}-config.txt"
  content  = <<EOF
Proyecto: ${var.app_name}
Entorno: ${var.environment}
Instancias = ${local.scaled_instances}
Prefijo = ${local.prefix}
Tags = ${jsonencode(local.default_tags)}
ID Generado = ${random_id.project_id.hex}
EOF
}
