# 3DR Solo firmware upgrade

This script will automatically download & deploy OpenSolo 4.0

## Steps:

- (if internet access is unavailable through solo-wifi) do a dryrun with molecule:

```
./dev/compile.sh
```

- upgrade copter:

```
ansible-playbook ./solo-upgrade1-copter.yml -i inventories/solo
```

- after copter start changing colors, reboot copter and test connectivity (automatic reset may not work)

- upgrade controller:

```
ansible-playbook ./solo-upgrade2-controller.yml -i inventories/solo
```
