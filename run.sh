#!/bin/bash
set -e -u
KRB5_KTNAME=/etc/krb5.keytab knc -l 1234 ./hyades-authserver
