

# Load Balancer________________________________________________________________________________
resource "aws_lb" "ECS_NLB" {
name               = "ECS-NLB-terraform"
internal           = true
load_balancer_type = "network"
subnets            = [aws_subnet.existing_private.id]
}
