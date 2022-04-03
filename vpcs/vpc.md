## How to create private vpc with terra forms
On Amazon AWS, you start by creating your own **Virtual Private Network**_** to deploy your instances (servers) / databases

## Private Subnets ##

|Range|From|To|
|----|-----|-------|
|10.0.0.0/8|10.0.0.0|10.255.255.255|
|172.16.0.0/12|172.16.0.0|172.31.255.255|

## Ips da classe A
|From|To|
|----|-----|
|10.0.0.1|10.255.255.255|

## Ips da classe B
|From|To|
|----|-----|
|172.16.0.0|172.31.255.255|

## Ips da classe C
|From|To|
|----|-----|
|192.168.0.0|192.168.255.255|

## Using 24bits to network and 8 bits to hosts
|From|To|
|----|-----|
|192.168.0.0|192.168.0.255|

* 255 is broadcast IP
* 0 is network IP not used
* 254 hosts is available


## Using 25bits to network and 7 bits to hosts

|Name|From|To|
|----|----|-----|
|NETWORK A|192.168.0.0|192.168.0.127|
|NETWORK b|192.168.0.128|192.168.0.255|

usin 7 bits the hosts are 128 available
2,4,8,16,32,64,128


**Used to local network **

** Gateway -> connect networks **





