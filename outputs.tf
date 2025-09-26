output "config_file_path" {
  description = "Ruta al archivo de configuración generado"
  value       = local_file.config_file.filename
}

output "project_id" {
  description = "ID generado para este proyecto"
  value       = random_id.project_id.hex
}
