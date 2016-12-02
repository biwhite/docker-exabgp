# Dockered exabgp #

## Build ##

```
docker build -t biwhite/exabgp .
```

## RUN ##

My use case was to have a server announce global IPv6 addresses for the docker containers, so this could not run on one of those addresses itself, hence I use ```host``` mode for networking, so config can be setup with host IP/IPv6 address to source traffic from.
```
docker run -d --net=host -v /opt/exabgp:/etc/exabgp biwhite/exabgp
```

## LOGS ##

exabgp will log to stdout, so ```docker logs -f exabgp``` will let you view them.

## Notes ##

On startup, if /etc/exabgp/exabgp.conf doesn't exist, it will copy a sample config file in place and run using that.
Configure neighbors as desired in this file, restart container or exabgp process to re-read, or send it a SIGUSR1 with:
```
docker exec exabgp killall -USR1 exabgp
```
