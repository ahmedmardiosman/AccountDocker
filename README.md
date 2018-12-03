# AccountDocker
1. Run setup.sh
  'bash setup.sh', './setup.sh'
  use 'chmod +x setup.sh' if necessary
  
2. Configure address
  edit AccountFront/src/constants.js and replace the line 
    export const BaseURL = "http://localhost:8080"
  with
    export const BaseURL = "http://{YOUR_EXTERNAL_IP_ADDRESS}:80"
    
3. Run beammeup.sh

4. Access front end through YOUR_EXTERNAL_IP_ADDRESS
