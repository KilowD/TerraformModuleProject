# terraform.tfvars contains Variable values
# If the file is named "terraform.tvars" it is loaded by default.
# It's important these files don't get checked into source control, or you are potentially exposing sensitive data.
# Otherwise make them part of the .ignore file

 region="us-east-1"                         
 project_name="ynwa"                  
 vpc-cidr="10.0.0.0/16"                       
 public-subnet-az1-cidr="10.0.0.0/24"         
 public-subnet-az2-cidr="10.0.1.0/24"          
 private_app_subnet_az1-cidr="10.0.2.0/24"      
 private_app_subnet_az2-cidr="10.0.3.0/24"     
 private_data_subnet_az1-cidr="10.0.4.0/24"     
 private_data_subnet_az2-cidr="10.0.5.0/24"    
