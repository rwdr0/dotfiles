function _docker.abbrs -d "Initialize Docker abbreviations"
    abbr -a --position anywhere -g d docker

    # Image
    abbr -a --position anywhere -g dib docker image build
    abbr -a --position anywhere -g dii docker image inspect
    abbr -a --position anywhere -g dils docker image ls
    abbr -a --position anywhere -g dis docker images
    abbr -a --position anywhere -g dipu docker image push
    abbr -a --position anywhere -g dirm docker image rm
    abbr -a --position anywhere -g ddrmi 'docker rmi (docker images --filter "dangling=true" -q --no-trunc)' # remove all unused images
    abbr -a --position anywhere -g dit docker image tag

    # Container
    abbr -a --position anywhere -g dcin docker container inspect
    abbr -a --position anywhere -g dcls docker container ls
    abbr -a --position anywhere -g dclsa docker container ls -a
    abbr -a --position anywhere -g dps docker ps
    abbr -a --position anywhere -g dpsa docker ps -a
    abbr -a --position anywhere -g dlo docker container logs
    abbr -a --position anywhere -g dpo docker container port
    abbr -a --position anywhere -g dr docker container run
    abbr -a --position anywhere -g drit docker container run -it
    abbr -a --position anywhere -g drm docker container rm
    abbr -a --position anywhere -g drm! docker container rm -f
    abbr -a --position anywhere -g dst docker container start
    abbr -a --position anywhere -g drs docker container restart
    abbr -a --position anywhere -g dstp docker container stop
    abbr -a --position anywhere -g dxc docker container exec
    abbr -a --position anywhere -g dxcit docker container exec -it

    # Network
    abbr -a --position anywhere -g dnc docker network create
    abbr -a --position anywhere -g dncn docker network connect
    abbr -a --position anywhere -g dndcn docker network disconnect
    abbr -a --position anywhere -g dni docker network inspect
    abbr -a --position anywhere -g dnls docker network ls
    abbr -a --position anywhere -g dnrm docker network rm

    # Volume
    abbr -a --position anywhere -g dvi docker volume inspect
    abbr -a --position anywhere -g dvls docker volume ls
    abbr -a --position anywhere -g dvprune docker volume prune

    # Misc
    abbr -a --position anywhere -g dbl docker build
    abbr -a --position anywhere -g dpl docker pull
    abbr -a --position anywhere -g dstart docker start
    abbr -a --position anywhere -g dstop docker stop
    abbr -a --position anywhere -g dstopa "docker stop (docker ps -q)" # stop all running containers
    abbr -a --position anywhere -g dtop docker top
end
