# switchdev - Nintendo Swith development in Docker
switchdev builds a container that will allow you to easily compile homebrew applications for the Nintendo Switch.

This images sets up the devkitPro pacman repositories and installs the necessary devkitPro packages to compile Nintendo Switch homebrew applications using libnx.

## installation
### pull from [hub.docker.com](https://hub.docker.com/r/yesimnathan/switchdev/)
```
docker pull yesimnathan/switchdev
```

### build yourself
```
git clone https://github.com/nchowning/dockerfiles.git
cd dockerfiles/switchdev
docker build -t switchdev --build-arg uid=$UID .
```

## usage
If your homebrew application has a `Makefile` in its project root, using this image is as easy as running the following from your project root:
```
docker run --rm -v $PWD:/developer yesimnathan/switchdev
```

That will mount your homebrew Nintendo Switch application to /developer and automatically run `make` in your project's root.

If you'd prefer to compile your code more interactively, you can do:
```
docker run --name switchdev -v $PWD:/developer yesimnathan/switchdev /bin/bash
```

That will mount your Nintendo Switch homebrew project to `/developer` and drop you into a `bash` shell

If you're not running the container from within your project's root directory, replace `$PWD` with the **absolute** path to your project.

## credits
- [switchbrew](www.switchbrew.org) for [libnx](https://github.com/switchbrew/libnx)
- [devkitPro](devkitpro.org) for the awesome toolchains and [pacman repositories](https://devkitpro.org/viewtopic.php?f=13&t=8702)
- [ReSwitched](https://reswitched.tech/) for [Fusée Launcher](https://github.com/reswitched/fusee-launcher) and all of their contributions to the scene
- [naehrwert](https://twitter.com/naehrwert) for the [hekate](https://github.com/nwert/hekate) project
