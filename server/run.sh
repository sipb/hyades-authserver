#!/bin/bash
set -e
KRB5_KTNAME=/etc/krb5.keytab knc -l 1234 ./ca.sh
