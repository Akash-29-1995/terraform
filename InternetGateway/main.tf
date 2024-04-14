resource "aws_internet_gateway" "imported_igw" {
  vpc_id = var.vpc_id
  depends_on = [aws_vpc.my_vpc]  # Ensure the VPC exists before attempting to import the Internet Gateway
}