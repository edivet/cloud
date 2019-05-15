# Cloud_courses_project

INTRODUCTION

The purpose of this project is to:
  - automatically create a scaleway server using Terraform
  - automatically configure this server in order to install Wordpress on it using Ansible
  - create an image of this server and reuse it using Packer

The final result of my project can be found there http://51.15.87.149/

  
# Ansible
  
I first wrote the Ansible playbook to deploy Wordpress on my server, which is highly inspired by this tutorial https://dotlayer.com/how-to-use-an-ansible-playbook-to-install-wordpress/

Then to apply the playbook's content:

  - ansible-playbook -i hosts -l playbook.yml

Now, you should be able to access the Wordpress webpage when typing in a browser the IP address of the server you just created.

# Packer

To build a reusable image of my server, I created a file.json.  you can type the following commands: 
 
  - packer build  scaleway-cloud-courses-template.json

You can verify the creation of this image on your scaleway account, when used, it should display the Wordpress homepage, and you will be able to custom it as you wish.

# Terraform
