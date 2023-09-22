* Harden ```/etc/passwd``` and ```/etc/shadow``` files
```
$ sudo chattr +i /etc/passwd
$ sudo chattr +i /etc/shadow
```
* Show shells in use
```
$ sudo awk -F':' {print $7}' /etc/passwd|sort|uniq -c|sort -rn
```
* View users with bash (or other login shells)
```
$ cat /etc/passwd | grep "/bin/bash"
```
* Add ```nologin``` if it doesn't exist
```
$ cat /etc/shells
$ echo "/usr/sbin/nologin" >> /etc/shells
```
* Change user to nologin
```
$ sudo usermod -s /usr/sbin/nologin USERNAME
```

* History of box 
```
$ cat history >> history_backup
```

* Clear history 
```
$ history -c && history -w
```

* Find shells on the system
```
$ sudo  find . -name "shell.php"
```

* Users currently ssh in
```
$ w
$ who 
$ who -a
$ netstat -tnpa | grep 'ESTABLISHED.*sshd'
```

* Verify only root has UID 0
```
Multiple accounts with a UID of 0 afford more opportunity for potential intruders to guess  a password for a privileged account.

$ sudo awk -F: '$3 == 0 && $1 != "root" { print $1 }' /etc/passwd | xargs passwd -l

```

* Ensure all files are owned by a user and group. Unowned files may be caused by an intruder, by incorrect software installation or draft software removal, or by failure to remove all files belonging to a deleted account.
```
# To find out all files that are not owned by any user:
$ sudo find / -nouser
```
```
# To find out all files that are not owned by any group:
$ sudo find / -nogroup
```
