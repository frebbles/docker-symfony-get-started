# Symfony demo with Docker

This docker container environment and build scripts are a quick evaluation method for the Symfony framework. In order to allow a set of developers to get a better understanding of Symfony by creating a quick way to get the system level configuration and installations done.

Based in part on https://dev.to/martinpham/symfony-5-development-with-docker-4hj8

And in part the Symfony demo doco: https://symfony.com/blog/introducing-the-symfony-demo-application

And from their github: https://github.com/symfony/demo

And useful link info here: https://www.thisprogrammingthing.com/2018/Using-MySQL-With-the-Symfony-Demo-Application/

Also thanks to: https://awesomeopensource.com/project/msgphp/symfony-demo-app

## Installation/Startup
To bring the whole environment online, just run
```docker-compose up``` 
in the directory.

Once the docker images are built and containers running, in another shell, run:
```symfony-demo-setup.sh```
which will build the symfony demo app, and (not referenced in doco) will build and import the database as it needs to be done, and the demo configuration doesn't complete this for you for some reason.


