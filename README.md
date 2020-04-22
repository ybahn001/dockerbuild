# dockerfiles-ubuntu-user-adderable-nginx test
ubuntu, It support base user creation and password setting.
```
pithub.com에 접속하여 self계정으로 dockerbuild로 Rpository 만들기
git config --global core.autocrlf false
git config --global core.eol lf
git clone https://github.com/ybahn001/dockerbuild.git

git pull
```
# Build Script
[https://github.com/ybahn001/dockerbuild.git](https://github.com/ybahn001/dockerbuild.git)

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	$cd
	$cd dockerbuild
	$winpty docker build --rm -t ybahn001/dockerbuild ./
	$mkdir ./df
	$ winpty docker run -it --name=y1 -v c:\\Users\\user\\df\\dockerbuild\\df:/var/www/html -e USER=ybahn -e PASSWD=ybahn ybahn001/dockerbuild
	#servic nginx start
  	* Starting nginx nginx                                                                  [ OK ]
	root@c758fef429f6:/# curl 127.0.0.1
	index화일입니다.
```
Get the port that the container is listening on:

```
# docker ps -a | grep ybahn001/dockerbuild
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES				 seconds
c758fef429f6        ybahn001/x                    "/bin/sh -c /start.sh"   5 minutes ago       Up 5 minutes			1
```

To test, ("ybahn" is username. )
```
		# curl 127.0.0.1  #open 127.0.0.1
		index화일입니다
```
github에 이미지 올리기
```
cd
git add -A
git commit -m "add dockerfile and etc"
git push

```

DockerHeb에 docker image push & readme.md update
```
1. image push
   $ docker push ybahn001/dockerbuild
2. readme.md udpate
   - github repository specification (: https://github.com/ybahn001/dockerbuild.git)
```

To Rollback
```
    docker rm y1 -f
    docker rmi ybahn001/x
```
