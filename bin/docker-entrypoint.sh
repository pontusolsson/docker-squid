#!/usr/bin/env sh

envtpl -o /etc/squid/squid.conf /etc/squid/squid.conf.j2

exec "$@"

