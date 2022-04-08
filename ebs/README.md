## Before terraform apply
* Generate public/private keys and add key name to vars.tf and key.tf
~~~
    $ ssh-keygen -f mykey
~~~
## After terraform apply
* $ vim terraformstate
_find by public_ip_

~~~
    $ ssh -i mykey -l ubuntu machine_ip
    $ mkfs.ext4 /dev/xvdh
    $ mkdir /data
    $ mount /dev/xvdh /data
    $ df -h
~~~

## The result:
~~~
$df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            491M     0  491M   0% /dev
tmpfs           100M  4.4M   95M   5% /run
/dev/xvda1      7.8G  911M  6.5G  13% /
tmpfs           496M     0  496M   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           496M     0  496M   0% /sys/fs/cgroup
tmpfs           100M     0  100M   0% /run/user/1000
/dev/xvdh        20G   44M   19G   1% /data

~~~
