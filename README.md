#### Contributors :
   Telessia : Xavier Fostier
   Maniaki : Clément Flamcourt

### External Environnement
* Ruby
   - 2.7
* Docker
* docker-compose  

### Docker environnement
 
* Container 1:
    - MongoDB
* Container 2:
    - Mongo Express (MongoDB data viewer)
* Container 3:
    - Ruby 2.7
    - Rails '6.1.4.4'
    - Nodejs npm Yarn (necessary to use rails in version < 7 without tweaks)


### Configuration
  
  >- Clone the repo
  >- open a terminal in "rails_counter_docker-master" folder
  >- Run "docker-compose build" (it should take a while)
  >- Run "docker-compose run web npm install" to add missing node_modules 
  >- Run "docker-compose up"
  >- Open Browser at http://0.0.0.0:3000/
