A [Docker](https://www.docker.com) image for the [Composer]
(https://getcomposer.org/) Dependency Manager for PHP.

To build the image:

`docker build -t chekote/docker-composer .`

When using the container with a project, you can easily run composer commands
against the container by doing the following:

* Copy the bin directory into your project.

* Ensure that your profile PATH includes `./bin` and that it takes priority over
any other directory that may include a composer executable:

`PATH=./bin:$PATH`

Now whenever you are in your project's directory, you can simply execute
`composer` as you would with a typical composer installation, and the command
will execute in the container instead:

`composer help`
