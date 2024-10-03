# awsPythonCicdProject

This repository contains a Python Flask web application with a CI/CD pipeline setup using AWS services such as: CodePipeline, CodeBuild and codeDeploy. 
The project is designed to demonstrate the automation of building and deploying a containerized Python application to AWS.

![image](https://github.com/user-attachments/assets/33dffefd-8bcf-485a-8c5c-9e9241a46fe4)



## Project Structure

The repository contains the following files and directories:

- `app.py` - A simple Flask application that returns "Hello, world!".
- `requirements.txt` - Defines the dependencies for the Flask application.
- `Dockerfile` - Used to containerize the Flask application.
- `buildSpec.yml` - Defines the build instructions for AWS CodeBuild.
- `appspec.yml` - Contains deployment instructions for AWS CodeDeploy.
- `scripts/` - Directory containing custom deployment scripts:
  - `start_container.sh` - A script that pulls the Docker image from Docker Hub and runs it as a container.
  - `stop_container.sh` - A script that stops and removes the running Docker container.

## CI/CD Pipeline

The CI/CD pipeline is set up using:

- **GitHub**: The source control platform where this repository is hosted.
- **AWS CodePipeline**: Automates the release process by connecting GitHub, AWS CodeBuild, and AWS CodeDeploy.
- **AWS CodeBuild**: Builds the Docker image for the Flask application and pushes it to a Docker registry.
- **AWS CodeDeploy**: Handles the deployment of the containerized application to the target environment.

## AWS Services Used

- **CodePipeline**: Automates the deployment pipeline, starting from source code changes in GitHub.
- **CodeBuild**: Builds the application and Docker image.
- **CodeDeploy**: Manages the deployment of the containerized application to an EC2 instance or another AWS environment.
