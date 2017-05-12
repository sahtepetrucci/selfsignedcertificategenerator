Google Chrome started to complain about existing self signed certificates with this error:

"Subject Alternative Name Missing The certificate for this site does not contain a Subject Alternative Name extension containing a domain name or IP address.
Certificate Error There are issues with the site's certificate chain (net::ERR_CERT_COMMON_NAME_INVALID)."

This self signed certificate generator script (tested on Mac OS) creates valid CRT and KEY files with a simple domain input. 

You can easily create your valid self signed certifciates using this and go back to your work unlike me! 