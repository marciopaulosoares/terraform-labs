## How to create private vpc with terra forms
On Amazon AWS, you start by creating your own **Virtual Private Network** to deploy your instances (servers) / databases

* Every availability zone has it own **public** and **private** subnet

* [Terra form details here](vpc-terraform.md)

## Creating the VPC
|Public Network|Private Network|availability zone
|---|---|---|
|main-public-1(10.0.1.0/24)| main-private-1 10.0.4.0/24 | eu-west-1a
|main-public-2(10.0.2.0/24)| main-private-1 10.0.5.0/24 | eu-west-1b
|main-public-1(10.0.3.0/24)| main-private-1 10.0.6.0/24 | eu-west-1c

>_Instances started in subnet main-public-3 will have IP address 10.0.3.x, and will be lauched in the eu-west-1c availability zone

>_An instance lauched in main-private-1 will have an IP address 10.0.4.x and reside in amazon´s eu-west-1a availability zone

## Private Subnets ##

|Range|From|To|Description
|----|-----|-------|-------|
|10.0.0.0/8|10.0.0.0|10.255.255.255| _Use 24 bits to network and 8 to hosts_ (the last group of octet)
|172.16.0.0/12|172.16.0.0|172.31.255.255|_Use 12 bits to network and 20 to hosts, the second group the octet start in 16 get more 16

## Sample: 172.16.0.0/12
|1s Octet|2s Octet|3s Octet|4s Octet
|----|----|----|----|
|12 networks|| 20 hosts||
|oooooooo|ooooxxxx|xxxxxxxx|xxxxxxxx|
|172.16.0.0/12 |172.16.0.0 | 172.31.255.255

## Class A
|From|To|
|----|-----|
|10.0.0.1|10.255.255.255|

## Class B
|From|To|
|----|-----|
|172.16.0.0|172.31.255.255|

## Class C
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

## About Gatewaty and 
* **These ips classes are used for a local network**
* **Gateway are used to connect networks**

## Links Utils
* https://www.iptp.net/pt_PT/iptp-tools/ip-calculator/
* https://www.ipaddressguide.com/cidr





