#!/bin/bash

/sbin/semanage fcontext -a -t httpd_sys_rw_content_t /var/lib/git/gitlist/cache
/sbin/restorecon -v /var/lib/git/gitlist/cache
/sbin/service httpd restart
