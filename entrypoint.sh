#!/usr/bin/env bash

command="redis-commander"

if [ -n "${REDIS_PORT}" ]
then
    command="$command --redis-port ${REDIS_PORT}"
fi

if [ -n "${REDIS_HOST}" ]
then
    command="$command --redis-host ${REDIS_HOST}"
fi

if [ -n "${REDIS_PASSWORD}" ]
then
    command="$command --redis-password ${REDIS_PASSWORD}"
fi

if [ -n "${REDIS_DB}" ]
then
    command="$command --redis-db ${REDIS_DB}"
fi

if [ -n "${HTTP_USER}" ]
then
    command="$command --http-u ${HTTP_USER}"
fi

if [ -n "${HTTP_PASSWORD}" ]
then
    command="$command --http-p ${HTTP_PASSWORD}"
fi

if [ -n "${PORT}" ]
then
    command="$command --port ${PORT}"
fi

if [ -n "${ADDRESS}" ]
then
    command="$command --address ${ADDRESS}"
fi

echo "$command"
$command
