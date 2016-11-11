# Run an EPICS archiver appliance in docker.

### Info:
For more information about the EPICS Archiver Appliance, see here:
https://slacmshankar.github.io/epicsarchiver_docs/

---
### Quickstart:
```
./build.sh
docker-compose up
# docker-compose up -d   # use this version to run in background as daemon
```

Now you can navigate to http://127.0.0.1:17665/mgmt/ to reach the management page of the archiver appliance.

---
### Customize
You can change where the archive appliance stores its data by editing the environment variables in `myenv.sh` before running `build.sh`. You can change settings for the archive appliance by editing the various configuration files in the `files` directory before running `docker-compose up`.






