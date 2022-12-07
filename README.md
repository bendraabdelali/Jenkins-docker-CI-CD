
# Creating a Robust CI/CD Pipeline with Jenkins

This project aims to create a complete CI/CD pipeline using Jenkins. It will include setting up a Jenkins server, configuring and automating builds, running automated tests, and deploying code to production. The pipeline will be designed to ensure high quality, secure, and efficient code delivery. Additionally, the pipeline should be able to handle any changes or updates to the codebase without manual intervention. The end goal of this project is to create an automated pipeline that can be used to reliably and securely deliver code to production.


![image](./assets/read.png)


##  Prerequisites

In order to run this project, you will need to install

[`docker`](https://docs.docker.com/engine/install/ubuntu/)

[`docker-compose`](https://docs.docker.com/compose/install/)

[`Jenkins`](https://github.com/bendraabdelali/portfolio-docker-nginx-/tree/main/Jenkins%20Server )

## Usage
 ```bash
  docker-compose up -d
```

To access the application used for this example, go to [localhost:8080](http://localhost:8080/)

## Create jenkins Pipeline in Jenkins Server
* Create new item

![image](./assets/newitem.png)

* Provide a name for your new item (e.g. CI-CD-Pipline) and select Pipeline
* Choose Pipeline as the job type and click OK.
* Under Pipeline -> Definition choose Pipeline script from SCM.
* Under SCM choose Git.
* Under Repository URL paste the HTTPS URL of your (forked) repository.
* Click Create.
* before click build in the dashboard Jenkins do some changes into index.html and after that push them into github
* click build now and refresh the page to see the changes 

![image](./assets/changes.png)

## Built With
- Jenkins
- Docker
- Docker Compose


## Authors
Bendra Abdelali
- [Profile](https://github.com/bendraabdelali)
- [Linkedin](https://www.linkedin.com/in/abdelali-bendra-934755182/)
- [Kaggle](https://www.kaggle.com/bendraabdelali)
