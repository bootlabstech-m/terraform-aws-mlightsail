resource "aws_lightsail_instance" "lightsail_instance" {
  name              = var.name                      
  availability_zone = var.zone                 
  blueprint_id      = var.lightsail_blueprints["wordpress"] 
  bundle_id         = var.bundle_id
  
}
## Creates a static public IP address on Lightsail
resource "aws_lightsail_static_ip" "static_ip" {
  name = "${var.name}_static_ip" ## Name of static IP in AWS
}
## Attaches static IP address to Lightsail instance
resource "aws_lightsail_static_ip_attachment" "static_ip_attach" {
  static_ip_name = aws_lightsail_static_ip.static_ip.id
  instance_name  = aws_lightsail_instance.lightsail_instance.id
}
