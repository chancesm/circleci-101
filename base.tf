/* AWS PROVIDER INFO */
provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET}"
  region = "${var.AWS_REGION}"
}

resource "aws_instance" "DockerDeployment" {
  ami = "ami-0bbe6b35405ecebdb"
  instance_type = "t2.micro"
  tags {
      Name = "Docker Deployment"
      Use = "For my first fully automated pipeline"
  }
  # provisioner "remote-exec" {
  #   inline = [
  #     ""
  #   ]
  # }
}

