#!/bin/bash
set -e

cd /tmp/statafiles
tar -zxf Stata17Linux64.tar.gz
mkdir /usr/local/stata17
cd /usr/local/stata17
/tmp/statafiles/install
