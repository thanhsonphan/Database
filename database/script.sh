#!/bin/sh

if [ "$1" == "create-db" ]; then
    docker exec -i app-db dropdb -U postgres management-app
    docker exec app-db createdb -U postgres management-app
elif [ "$1" == "create-table" ]; then
    docker cp ./table.sql app-db:/table.sql
    docker exec -i app-db psql -U postgres -d management-app -f ./table.sql
elif [ "$1" == "insert-testdata" ]; then
    docker cp ./testdata.sql app-db:/testdata.sql
    docker exec -i app-db psql -U postgres -d management-app -f ./testdata.sql
    docker cp ./testdataservice.sql app-db:/testdataservice.sql
    docker exec -i app-db psql -U postgres -d management-app -f ./testdataservice.sql
    docker cp ./testdatarating.sql app-db:/testdatarating.sql
    docker exec -i app-db psql -U postgres -d management-app -f ./testdatarating.sql
elif [ "$1" == "check" ]; then
    docker exec -i app-db psql -U postgres -d management-app -c "SELECT * FROM rating"
else
    echo "syntax error."
fi