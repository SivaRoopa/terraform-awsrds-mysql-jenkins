resource "aws_db_instance" "demo-mysql-db" {
identifier = "mysql-rds-terraform"
storage_type = "gp2"
allocated_storage = 20


engine = "mysql"
engine_version = "8.0"
instance_class = "db.t2.micro"
port ="3306"

db_subnet_group_name = "default"
name = "myDemoDB"
username = var.username
password = var.password
parameter_group_name = "default.mysql8.0"
availability_zone = "us-east-1a"

deletion_protection = true
publicly_accessible    = true
skip_final_snapshot    = true


  tags = {
    Name = "Demo MySQL RDS Instance"
  }
}