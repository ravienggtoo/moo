# Moo - Task 1 - Build

### Docker Image
  - Used python 3.6 alphine as Base Image 
  - Created Virtual Environment for making app isolation
  - Created app user to run application for security
  - Packaging Flask app as Docker Image

### Build Test Package
  - Each Developer will be having a feature branch and will push changes to this branch
  - Once Build is successful they can create Pull request and merge it to develop branch
  - Develop branch will be the integration branch which contains code of all Developers
  - Once Develop is Successful they can merge code to master and create a release with version
   
### Continous Integration
  - Used Docker Cloud for running building,testing and packaging Docker Image for all branches of this repo
  - Used docker-compose.test.yml for running unit test of the application 
