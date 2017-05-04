#!/usr/bin/env python3

import os
import sys

if len(sys.argv) != 2:
    print("Usage: {0} _filename_".format(sys.argv[0]), file=sys.stderr)
    exit(1)

with open(sys.argv[1], "r") as f:
    authorized_principals = f.read().split()

knc_creds = os.getenv("KNC_CREDS")

if knc_creds is None:
    print("No kerberos principal", file=sys.stderr)
    exit(1)
elif knc_creds in authorized_principals:
    exit(0)
else:
    print("Unauthorized principal '{0}'".format(knc_creds), file=sys.stderr)
    exit(1)
