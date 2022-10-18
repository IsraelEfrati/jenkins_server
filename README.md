# jenkins_server
Start a Jenkins server and add a user with JCASC and Docker Compose

### Installation Instructions:
Create a new directory for the jenkins server:      
  mkdir my-server       

Enter the new directory:        
cd ./my-server      

Download code files by running the following:       
git clone https://github.com/IsraelEfrati/jenkins_server.git

Build the image by running:     
sudo docker build -t jenkins:jcasc .

Run the container by running:       
sudo docker-compose up -d

  
