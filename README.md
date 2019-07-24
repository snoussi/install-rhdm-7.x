# RHDM-7.4 Sandbox Installation

## Installation packages  

* Download and copy [installation packages] (installs/README.md) to ./installs folder 

## Run RHDM installation script  
```
$ ./install.sh
```

## Configure RHDM
* Start EAP Server in admin mode
```
$ cd ../rhdm-7.4/bin
$ ./standalone.sh -c standalone-full.xml --admin-only
```

* In another terminal, run the system properties configuration script
```
$ ./add-system-properties.sh
```

* Then, run the kie server configuration script
```
$ ./add-kie-server-system-properties.sh
```

* Stop EAP Server (admin mode) 

## Start RHDM
```
$ cd ../rhdm-7.4
$ ./bin/standalone.sh -c standalone-full.xml
```