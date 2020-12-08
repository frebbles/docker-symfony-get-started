# Symfony demo with Docker

Based in part on https://dev.to/martinpham/symfony-5-development-with-docker-4hj8
And in part the Symfony demo doco: https://symfony.com/blog/introducing-the-symfony-demo-application
And from their github: https://github.com/symfony/demo

## Installation/Startup
To bring the whole environment online, just run
```docker-compose up``` 
in the directory.

Once the docker images are built and containers running, in another shell, run:
```symfony-demo-setup.sh```
which will build the symfony demo app, and (not referenced in doco) will build and import the database as it needs to be done, and the demo configuration doesn't complete this for you for some reason.


