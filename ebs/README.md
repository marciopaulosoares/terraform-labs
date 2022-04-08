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

