### Tracking root activity on Linux system
#### Use rootsh rpm
Most linux distributions have ```rootsh``` rpms as a part of their respository. You can setup rootsh to log everything the root user does
to syslog.
For more details -  http://linux.die.net/man/1/rootsh

rootsh rpms are also available in EPEL. 

#### Use sudo plugins
sudo on RHEL6 onwards is also capable of logging stdout to a file for every sudo session. You can make use
of it to track root activities. Look into sudo_plugins man page.

If sudo_plugin is not installed, you can install using:
```
# yum install sudo-devel
```
#### Filter logs under /var/log/secure
On Red Hat distros you typically use the /var/log/secure log to identify who's been logging in or making use of sudo on a Fedora/CentOS/RHEL system.
e.g.
```
$ sudo -Es
```
corresponding log:
```
Mar 24 19:32:51 kobra sudo: joshi : TTY=pts/2 ; PWD=/home/joshi ; USER=root ; COMMAND=/bin/bash
```
```
$ su -
```
corresponding log:
```
Mar 24 19:34:51 kobra su: pam_unix(su-l:session): session opened for user root by joshi(uid=1000)
```

#### Make use of auditd
Auditd basically intercepts all system calls and checks them against your set of rules. So in your /etc/audit/audit.rules file, add the following rule:

```
$ sudo cat /etc/audit/audit.rules
# First rule - delete all
-D

# Increase the buffers to survive stress events.
# Make this bigger for busy systems
-b 4096

# Feel free to add below this line. See auditctl man page
-a always,exit -F euid=0 -F perm=wxa -k ROOT_ACTION
....
```
The main drawback of this approach is raw log files are cryptic and are difficult to understand.
However, by using ```ausearch``` utility, you can query the logs and get useful results:
```
$ sudo ausearch -ts today -k ROOT_ACTION -f audit_me | aureport -i -f
```
