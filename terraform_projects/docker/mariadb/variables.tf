variable "mariadb_root_password" {
  description = "The root password for MariaDB"
  type        = string
  sensitive   = true
}

variable "mariadb_database" {
  description = "The name of the database to create on startup"
  type        = string
  default     = "my_app_database" # Defaults are okay for non-sensitive data
}

variable "mariadb_user" {
  description = "The application user for the database"
  type        = string
  default     = "app_user"
}

variable "mariadb_password" {
  description = "The password for the application user"
  type        = string
  sensitive   = true
}