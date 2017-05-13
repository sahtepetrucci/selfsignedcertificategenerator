This self signed certificate generator script creates valid CRT and KEY files with a simple domain input (tested on Mac OS). 

You can easily create your valid self signed certificates using this and go back to your work (unlike me)!

PS: Just modify the OpenSSL config file path accordingly to use the script in a Linux distribution.
To find the exact location of the file, run this command: sudo find / -name 'openssl.cnf'

----

Google Chrome (starting from version 58) started to complain about existing self signed certificates with this error:

"Subject Alternative Name Missing The certificate for this site does not contain a Subject Alternative Name extension containing a domain name or IP address.
Certificate Error There are issues with the site's certificate chain (net::ERR_CERT_COMMON_NAME_INVALID)."

This script adds a Subject Alternative Name when generating a certificate to address this issue.

