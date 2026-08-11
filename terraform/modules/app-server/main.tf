resource "aws_instance" "app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  iam_instance_profile = var.iam_instance_profile

  user_data = <<-USERDATA
              #!/bin/bash
              dnf update -y
              dnf install -y python3
              mkdir -p /opt/app

              cat > /opt/app/index.html <<'HTML'
              <html>
              <head>
                <title>Cloud DevOps Lab 2026</title>
              </head>
              <body>
                <h1>Cloud DevOps Lab 2026</h1>
                <p>Application server is running.</p>
              </body>
              </html>
              HTML

              cd /opt/app
              nohup python3 -m http.server 8080 --bind 0.0.0.0 > /var/log/app-server.log 2>&1 &
              USERDATA

  tags = {
    Name      = "${var.project_name}-app-server"
    Project   = var.project_name
    Tier      = "Application"
    ManagedBy = "Terraform"
  }
}
