module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "2.78.0"

# VPC BASIC Details
    name = "vpc-dev"
    cidr = "10.0.0.0/16"
    azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
    private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
    public_subnets      = ["10.0.101.0/24", "10.0.201.0/24"]
    database_subnets      = ["10.0.151.0/24","10.0.152.0/24"]
    create_database_subnet_group = true
    create_database_subnet_route_table = true
    enable_dns_hostnames = true
    enable_dns_support = true
    enable_nat_gateway = true
    single_nat_gateway = true
    public_subnet_tags = {
        type = "public-subnet"
    }
    private_subnet_tags = {
        type = "private-subnet"
    }
    nat_gateway_tags = {
        name = "nat-gateway"
    }
    vpc_tags = {
        name = "vpc-dev"
    }
    igw_tags = {
        name = "internet-gateway"
    }
    tags = {
    Owner = "Halfengineer"
    Environment = "dev"
  }
    
}