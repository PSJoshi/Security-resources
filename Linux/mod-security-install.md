### Install mod_security
* Enable EPEL repository

* Install mod_security
```
# yum install mod_security mod_security_crs
```
* Customize modsecurity configuration
Edit ModSecurity configuration file /etc/httpd/conf.d/mod_security.conf and look for the SecRuleEngine Directive on the File and configured with the Desired Value.

  * On – Rules are activated
  * Off – Rules are Deactivated
  * DetectionOnly – Only Intercepts and logs Transactions

* Restart apache
```
# service httpd restart
```

* To confirm that our web application firewall is working we should see something like this in Apache error logs.
```
# tail /var/log/httpd/error_log

[Thu Mar25 16 19:20:58 2021] [notice] ModSecurity for Apache/2.7.3 (http://www.modsecurity.org/) configured.
[Thu Mar25 16 19:20:58 2021] [notice] ModSecurity: APR compiled version=”1.3.9″; loaded version=”1.3.9″
[Thu Mar25 16 19:20:58 2021] [notice] ModSecurity: PCRE compiled version=”7.8 “; loaded version=”7.8 2008-09-05″
[Thu Mar25 16 19:20:58 2021] [notice] ModSecurity: LUA compiled version=”Lua 5.1″
[Thu Mar25 16 19:20:58 2021] [notice] ModSecurity: LIBXML compiled version=”2.7.6″

```

#### Important files 
* Mod Security Config File – /etc/httpd/conf.d/mod_security.conf
* Debug Log – /var/log/httpd/modsec_debug.log
* Audit log – /var/log/httpd/modsec_audit.log
* Rules – /etc/httpd/modsecurity.d/activated_rules

#### Find mod_security rules getting triggered
```
# grep ModSecurity /usr/local/apache/logs/error_log |
sed -e 's#^.*[id "([0-9]*).*hostname "([a-z0-9-_.]*)"].*uri "#1 2 #' |
cut -d" -f1 | sort -n | uniq -c | sort -n
```
This will give output like this:
```
129 990011 example.com /feed/
4668 950004 example.com /wp-content/themes/magic/jquery.cookie.js
29070 950004 www.example.com /wp-content/themes/magic/jquery.cookie.js
```
So we can see that the ModSecurity rule ID 950004 has been triggered at least 33,738 between example.com and www.example.com when trying to request the /wp-content/themes/magic/jquery.cookie.js file.
