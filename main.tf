module dev-infra {
    source = "./infra-app"
    environment = "dev"
    instance_count = 1
    instance_type = "t2.micro"
    ec2_ami_id = "ami-04f167a56786e4b09"
    bucket_name = "terra-infra-app-bucket"  
    hash_key = "studentID" 

}

module prod-infra {
    source = "./infra-app"
    environment = "prod"
    instance_count = 2
    instance_type = "t2.micro"
    ec2_ami_id = "ami-04f167a56786e4b09"
    bucket_name = "terra-infra-app-bucket"  
    hash_key = "studentID"
}

module test-infra {
    source = "./infra-app"
    environment = "test"
    instance_count = 1
    instance_type = "t2.micro"
    ec2_ami_id = "ami-04f167a56786e4b09"
    bucket_name = "terra-infra-app-bucket"  
    hash_key = "studentID"
}