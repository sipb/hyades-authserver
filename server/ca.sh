#!/bin/bash
set -e

./check_knc_creds.py authorized || exit 1
TMPDIR=$(mktemp -d)
cat > "$TMPDIR"/client_key.pub
ssh-keygen -s ca_key -I "$KNC_CREDS" -n root,dev -V +4h "$TMPDIR"/client_key.pub
cat "$TMPDIR"/client_key-cert.pub
rm -rf "$TMPDIR"
