if docker-compose.yaml not working your system you will just write this codes in cmd


/// first pull image
docker pull postgres:16-alpine

///docker create
docker run --name full-dayhan -p 5436:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -d postgres:16-alpine


///create inside docker database
docker exec -it full-dayhan createdb --username=root --owner=root dayhan_db

///drop inside docker database
docker exec -it full-dayhan dropdb dayhan_db



///cli database
docker exec -it full-dayhan psql
