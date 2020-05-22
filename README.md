# docker-mariadb

Version 1.2.0

Make sure you have terminal open in this directory and:

- run `sh run.sh` to boot up for the first time (or after you run "stop")
- run `sh start.sh` to start up a container, after say - your computer has been rebooted
- run `sh stop.sh` to stop
- run `sh exec.sh` to open a shell on the mariadb server 

You will need to connect in TCP mode `port 3306` is the port, but that
is the usual default port anyway so may not need to be set.

Top tip:  
run `chmod +x *.sh` to shorten all above commands to just: `./run.sh` etc.
