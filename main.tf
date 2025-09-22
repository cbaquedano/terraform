terraform {
  required_version = ">= 1.6"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4"
    }
  }
}

resource "random_id" "project_id" {
  byte_length = 8
}

resource "local_file" "student_info" {
  filename = "outputs/student_info.txt"
  content  = "Estudiante: ${var.student_name}\nGitHub: ${var.github_user}\nLenguaje favorito: ${var.favorite_language}\n"
}
