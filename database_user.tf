resource "mongodbatlas_database_user" "user" {
    username = var.dbuser
    password = var.dbuser_password
    project_id = mongodbatlas_project.project.id
    auth_database_name = "admin"

    roles {
        role_name = "readWrite"
        database_name = var.database_name
    }
    labels{
        key = "Name"
        value = "denesdev@gmail.com"
    }
}
output "user1" {
    value = mongodbatlas_database_user.user.username
}

