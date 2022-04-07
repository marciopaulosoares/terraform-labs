## Before terraform apply
* Generate public/private keys and add key name to vars.tf and key.tf
~~~
    $ ssh-keygen -f mykey
~~~
## After terraform apply
* $ vim terraformstate
_find by public_ip_

* As root
~~~
    $ sudo -s
    $ ifconfig
    $ route -n
    $ ping 8.8.8.8
~~~

