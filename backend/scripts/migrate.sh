#!/bin/bash

export POSTGRESQL_URL='postgres://postgres:123456@localhost:5432/dayhan?sslmode=disable'
echo $POSTGRESQL_URL
migrate -database "${POSTGRESQL_URL}" up