# The Problem

Check your docker networks:
```
$ docker network list
NETWORK ID          NAME                DRIVER              SCOPE
c825b3e4e82c        bridge              bridge              local               
f035729e127d        host                host                local               
b93d6694a10e        none                null                local               
```

Try to spawn 32 new networks from the default pool by running
`./create_networks.sh`.

You get 29 networks and an error, because the default pool is limited to 32
networks in total.
```
$ docker network list -q | wc -l
32
```

The error message is
```
Error response from daemon: failed to parse pool request for address space "LocalDefault" pool "" subpool "": could not find an available predefined network
```


# Solution

Explicit subnet: See `./subnets.sh` (plain `docker network create`) and
`docker-compose.yml`.

It would be nice if the defaults could be changed, but as far as I can tell,
this is not possible yet.
See https://github.com/moby/moby/pull/29376 (closed
[by mistake](https://github.com/moby/moby/pull/29376#issuecomment-343042071)).
