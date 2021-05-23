# reactapp
Docker file created with base image taken from version node:14.15.1
Created build pipeline (Require node js plugin in jenkins to run the npm commands)
Docker credentials required to add in Jenkins global credentials otherwise we could not upload the image into docker repository/hub
Either kubernetes plugin is required or ssh plugin is required to integrate EC2 or VM with Jenkins to connect to kubernetes master node 
Once connected then run the deploy pipeline which will deploy the reactapp into one of the worker nodes(Further into the pods)
