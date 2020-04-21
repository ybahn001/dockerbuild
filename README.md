# dockerfiles-centos-user-adderable
ubuntu, It support base user creation and password setting.
```
git clone https://github.com/ybahn001/dockerbuild.git
```

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	cd dockerbuild
	winpty docker build --rm -t ybahn001/ubuntu:1.0 ./
	mkdir ./df
	winpty docker run -it --name=y1 -v c:\\Users\\user\\df\\dockerbuild\\df:/var/www/html -e USER=ybahn -e PASSWD=ybahn ybahn001/ubuntu:1.0
	#servic nginx start
  #curl 127.0.0.1
		$ winpty docker run -it --name=y1 -v c:\\Users\\user\\df\\dockerbuild\\df:/var/www/html -e USER=ybahn -e PASSWD=ybahn ybahn001/x
 		* Starting nginx nginx                                                                  [ OK ]
		root@c758fef429f6:/# curl 127.0.0.1
		index화일입니다.
```
Get the port that the container is listening on:

```
# docker ps -a | grep ybahn001/x
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES				 seconds
c758fef429f6        ybahn001/x                    "/bin/sh -c /start.sh"   5 minutes ago       Up 5 minutes			1
```

To test, ("ybahn" is username. )
```
		# curl 127.0.0.1
		index화일입니다
```
To Rollback
```
    docker rm y1 -f
    docker rmi ybahn001/x
```
