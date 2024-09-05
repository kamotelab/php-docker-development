# PHP Docker Development

PHP Docker Development is intended to create and run php & mysql container easily for small task like creating package/libraries etc. It uses FrankenPHP and MySQL.

## Features
* FrankenPHP
* PHP 8.3+
* MySQL 9.0+

## Requirements
* GNU Make 4.3
* Docker 27.2.0 or higher
* Docker Compose version 2.20.2


## How to use

### Clone the repository

```
git clone git@github.com:kamotelab/php-docker-development.git
```


### Copy .env.example

```
cp .env.example .env
```

### Update .env values

```
// example: php-docker-development
APPLICATION_NAME={application-name} 
EXEC=docker compose exec

// example: /home/kamotelab/projects/website/
LOCAL_DIRECTORY={path/to/your/root}
// example: /home/kamotelab/projects/volumes
VOLUME_DIRECTORY={path/to/volume/dir}

// example: my-user
MYSQL_USERNAME={db user}
// example: my-password
MYSQL_PASSWORD={db password}

```

### Create docker image (run only once)
```
// after running this command, it will create docker image in your local, so no need to run again.
make init
```

### Start the application
```
// run everytime you will use it
make start
```

### Visit your localhost https://localhost/ and start coding

### Stop the container
```
// once done, stop the container
make stop
```

### Login to web container as user

```
make sh
```

### Login to web container as root

```
make root
```

