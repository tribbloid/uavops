# 3DR Solo firmware upgrade

This script will automatically download & deploy OpenSolo 4.0

## Steps:

- (if internet access is unavailable through solo-wifi) do a dryrun with molecule:

```
./dev/compile.sh
```

make sure that the following files are downloaded and cached:

```
tmp/3dr-controller.tar.gz
tmp/3dr-controller.tar.gz.md5
tmp/3dr-solo.tar.gz
tmp/3dr-solo.tar.gz.md5
tmp/ArduCopter.4.0.1.CubeSolo.apj
```

- upgrade copter:

```
ansible-playbook ./solo-upgrade1-copter.yml -i inventories/solo
```

- after copter start changing colors, reboot copter and test connectivity (--reset argument won't cause the copter to reconnect automatically)

- upgrade controller:

```
ansible-playbook ./solo-upgrade2-controller.yml -i inventories/solo
```
