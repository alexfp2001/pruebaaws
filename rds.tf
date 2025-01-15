# Proveedor de AWS
provider "aws" {
  region = "us-east-1" # Cambia a tu región preferida
}

# Instancia RDS
resource "aws_db_instance" "mi_rds" {
  allocated_storage    = 20                      # Tamaño de almacenamiento en GB
  engine               = "mysql"                 # Motor de base de datos (puede ser mysql, postgres, etc.)
  engine_version       = "8.0"                   # Versión del motor
  instance_class       = "db.t2.micro"           # Tipo de instancia
  db_name              = "mi_base_datos"         # Nombre de la base de datos
  username             = "usuario"               # Nombre de usuario administrador
  password             = "contraseña_secreta"    # Contraseña del administrador
  parameter_group_name = "default.mysql8.0"      # Grupo de parámetros
  skip_final_snapshot  = true                    # Omite la creación de un snapshot final al eliminar
  publicly_accessible  = true                    # Si la base de datos es accesible públicamente

  tags = {
    Name = "Mi-RDS"
  }
}


