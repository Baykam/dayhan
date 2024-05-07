#!/bin/bash

export POSTGRESQL_URL='postgres://postgres:123456@localhost:5432/dayhan?sslmode=disable'
echo $POSTGRESQL_URL
psql "${POSTGRESQL_URL}"