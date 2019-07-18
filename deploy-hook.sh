#!/bin/sh
#

set -e

LINKDIR="/etc/letsencrypt/links/"

mkdir -p ${LINKDIR}

for domain in $RENEWED_DOMAINS; do
	ln -sf $RENEWED_LINEAGE ${LINKDIR}/$domain
done
