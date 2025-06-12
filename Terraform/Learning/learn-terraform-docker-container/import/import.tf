/*
[fabrice@hashicorp import]$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
ef69a132f22d   a830707172e8   "/docker-entrypoint.…"   51 seconds ago   Up 51 seconds   0.0.0.0:8000->80/tcp   prodcontainer

-> To get the full container ID, you can the use docker inspect command:
[fabrice@hashicorp import]$ docker inspect --format="{{.ID}}" prodcontainer
ef69a132f22db1a55a8da459cc05fe71bd543461bf477f3fc6b6357a9163ad8e

-> To get the full container ID, you can also use the docker --no-trunc option:
[fabrice@hashicorp import]$ docker ps --no-trunc
CONTAINER ID                                                       IMAGE                                                                     COMMAND                                          CREATED              STATUS              PORTS                  NAMES
ef69a132f22db1a55a8da459cc05fe71bd543461bf477f3fc6b6357a9163ad8e   sha256:a830707172e8069c09cf6c67a04e23e5a1a332d70a90a54999b76273a928b9ce   "/docker-entrypoint.sh nginx -g 'daemon off;'"   About a minute ago   Up About a minute   0.0.0.0:8000->80/tcp   prodcontainer

-> If you try to import a docker image, you get the message:
Error: resource docker_image doesn't support import
*/

import {
    to = docker_container.imported_container
    id = "ef69a132f22db1a55a8da459cc05fe71bd543461bf477f3fc6b6357a9163ad8e"
}

/*
-> First you need to init the project
[fabrice@hashicorp import]$ terraform init

-> To generate the dockerVM.tf configuration file:
[fabrice@hashicorp import]$ terraform plan -generate-config-out=dockerVM.tf

->To generate the state file:
[fabrice@hashicorp import]$ terraform apply
*/