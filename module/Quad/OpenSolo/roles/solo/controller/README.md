Role Name
=========

A brief description of the role goes here.

if successful you should be able to read the following message:

```buildoutcfg
root@3dr_controller:~# cat /log/setupwifi.log 
rm: can't remove '/mnt/rootfs.rw/lib/modules/3.10.17-rt12-*/kernel/net/ipv4/netfilter/iptable_filter.ko': No such file or directory
Stopping HOSTAP Daemon: stopped /usr/sbin/hostapd (pid 813)
hostapd.
killall: wpa_supplicant: no process killed
killall: udhcpc: no process killed
restarting DNS forwarder and DHCP server: dnsmasq... 
stopping DNS forwarder and DHCP server: dnsmasq... stopped /usr/bin/dnsmasq (pid 799)
done.
starting DNS forwarder and DHCP server: dnsmasq... done.
done.
connecting to the internet...
Successfully initialized wpa_supplicant
rfkill: Cannot open RFKILL control device
udhcpc (v1.21.1) started
Sending discover...
Sending discover...
Sending select for 192.168.14.82...
Lease of 192.168.14.82 obtained, lease time 43200
/etc/udhcpc.d/50default: Adding DNS 38.99.186.66
/etc/udhcpc.d/50default: Adding DNS 38.99.186.65
Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf
rfkill: Cannot open RFKILL control device
wlan0-ap: interface state UNINITIALIZED->COUNTRY_UPDATE
Using interface wlan0-ap with hwaddr 8a:dc:96:43:08:75 and ssid "SoloLink_430875"
wlan0-ap: interface state COUNTRY_UPDATE->ENABLED
wlan0-ap: AP-ENABLED 
hostapd.
setting up IP forwarding...

success: Solo is now connected to the Internet.
if your computer does not yet have Internet access, try
disconnecting and reconnecting to Solo's wifi network.
```

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
