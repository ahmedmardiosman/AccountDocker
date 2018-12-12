# AccountDocker

# INITIAL SETUP
1. Install git
  sudo yum install git -y
2. Run setup.sh
  'bash setup.sh', './setup.sh'
  use 'chmod +x setup.sh' if necessary
3. Enter external IP address of VM when prompted in setup.sh 
    
# AFTER SETUP    
1. Run beammeup.sh
2. Access front end through the external IP address of your VM

# SCRIPTS
setup.sh            -> installs maven, docker, docker-compose
                        runs gitinit.sh, gitpullrecent.sh, deletetests.sh, copydockerfiles.sh, adjustappprop.sh, mvncleanpackall.sh
              
gitinit.sh          -> initialises repositories in each project folder and adds the corresponding remote origin

gitpullrecent.sh    -> pulls the most recent version of a repository

deletetests.sh      -> deletes test files because they ruin things

copydockerfiles.sh  -> copies the dockerfiles into the project folders

adjustappprop.sh    -> edits the application.properties/constants files for each project so that paths point to the correct address/image

mvncleanpackall.sh  -> maven cleans and packages each project 

buildyml.sh         -> reads the lines from the ymlconfig file and generates the docker-compose file for each image listed. Use spring initialiser to ensure Artifact names are created correctly
ymlconfig           -> Each line represents the project name which will be the name for the related image. Lines preceeding with a '%' represent port mappings for the image listed above it. For example, '%8080' maps the images internal port to the external port 8080. If a mapping ends in 'F' (e.g. %30F), it maps the given external port to reacts default internal port 3000. 
