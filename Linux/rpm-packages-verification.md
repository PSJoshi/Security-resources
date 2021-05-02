### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities as early as possible. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) are nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system. Since the verification process takes time, it's best to run this as a cron job.
As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and some of them ### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities early. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) is nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system and it's good to run this as a cron job as it will take some time.

As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and are listed below:
* S The file size differs
* M The file mode or permissions differ
* 5 The digest or checksum of the file differs
* D The device major or minor number differs
* L The read link differs
* U The user owner differs
* G The group ownership differs
* T The last modified time stamp differs
* P The file capabilities differ

It will be good if you send the output through to a file so that it's possible to campare the latest results with a baseline taken soon after the installation and configuartion of the server.
```
# diff baseline.results recent.results
```
### Ref
* https://jfearn.fedorapeople.org/en-US/RPM/4/html-single/RPM_Guide/index.html

### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities as early as possible. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) are nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system. Since the verification process takes time, it's best to run this as a cron job.
As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and some of them ### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities early. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) is nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system and it's good to run this as a cron job as it will take some time.

As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and are listed below:
* S The file size differs
* M The file mode or permissions differ
* 5 The digest or checksum of the file differs
* D The device major or minor number differs
* L The read link differs
* U The user owner differs
* G The group ownership differs
* T The last modified time stamp differs
* P The file capabilities differ

It will be good if you send the output through to a file so that it's possible to campare the latest results with a baseline taken soon after the installation and configuartion of the server.
```
# diff baseline.results recent.results
```
### Ref
* https://jfearn.fedorapeople.org/en-US/RPM/4/html-single/RPM_Guide/index.html

### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities as early as possible. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) are nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system. Since the verification process takes time, it's best to run this as a cron job.
As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and some of them ### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities early. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) is nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system and it's good to run this as a cron job as it will take some time.

As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and are listed below:
* S The file size differs
* M The file mode or permissions differ
* 5 The digest or checksum of the file differs
* D The device major or minor number differs
* L The read link differs
* U The user owner differs
* G The group ownership differs
* T The last modified time stamp differs
* P The file capabilities differ

It will be good if you send the output through to a file so that it's possible to campare the latest results with a baseline taken soon after the installation and configuartion of the server.
```
# diff baseline.results recent.results
```
### Ref
* https://jfearn.fedorapeople.org/en-US/RPM/4/html-single/RPM_Guide/index.html

### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities as early as possible. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) are nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system. Since the verification process takes time, it's best to run this as a cron job.
As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and some of them ### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities early. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) is nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system and it's good to run this as a cron job as it will take some time.

As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and are listed below:
* S The file size differs
* M The file mode or permissions differ
* 5 The digest or checksum of the file differs
* D The device major or minor number differs
* L The read link differs
* U The user owner differs
* G The group ownership differs
* T The last modified time stamp differs
* P The file capabilities differ

It will be good if you send the output through to a file so that it's possible to campare the latest results with a baseline taken soon after the installation and configuartion of the server.
```
# diff baseline.results recent.results
```
### Ref
* https://jfearn.fedorapeople.org/en-US/RPM/4/html-single/RPM_Guide/index.html

### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities as early as possible. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) are nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system. Since the verification process takes time, it's best to run this as a cron job.
As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and some of them ### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities early. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) is nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system and it's good to run this as a cron job as it will take some time.

As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and are listed below:
* S The file size differs
* M The file mode or permissions differ
* 5 The digest or checksum of the file differs
* D The device major or minor number differs
* L The read link differs
* U The user owner differs
* G The group ownership differs
* T The last modified time stamp differs
* P The file capabilities differ

It will be good if you send the output through to a file so that it's possible to campare the latest results with a baseline taken soon after the installation and configuartion of the server.
```
# diff baseline.results recent.results
```
### Ref
* https://jfearn.fedorapeople.org/en-US/RPM/4/html-single/RPM_Guide/index.html

### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities as early as possible. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) are nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system. Since the verification process takes time, it's best to run this as a cron job.
As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and some of them ### Using RPM verification for intrusion detection

Auditing system is very important especially for Internet facing servers. In security domain, it's important to catch suspicious activities early. Hackers often install rootkits on the system to hide their malicious activities. Rootkit(s) is nothing but a collection of tools in the form of programs that a hacker use to mask their attacks or activities on the system.

Commonly a rootkit will replace binaries such as ls and ps on your system. The idea is that the imported ```ls``` command will not list files associated with the rootkit and in the same way, the imported ```ps``` command will refuse to display and processes that the root kit runs. 

To detect rootkits, a simple detection method on CentOS like system is to make use of RPM's verification method using command:
```
# rpm -V package_name
```
If you don't give package_name, it will verify all the packages (rpms) installed on the system and it's good to run this as a cron job as it will take some time.

As a system admin, it is hoped that the files in "use" match with those in the package inventory. The match is made on the basis of size, date stamp and md5 checksum. The elements that are checked are listed in the ```rpm``` man page and are listed below:
* S The file size differs
* M The file mode or permissions differ
* 5 The digest or checksum of the file differs
* D The device major or minor number differs
* L The read link differs
* U The user owner differs
* G The group ownership differs
* T The last modified time stamp differs
* P The file capabilities differ

It will be good if you send the output through to a file so that it's possible to campare the latest results with a baseline taken soon after the installation and configuartion of the server.
```
# diff baseline.results recent.results
```
### Ref
* https://jfearn.fedorapeople.org/en-US/RPM/4/html-single/RPM_Guide/index.html

