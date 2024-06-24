DOCKER INTEGRATION PROJECT
<!-- 1. Go to the docker folder -->
cd docker
<!-- 2. Then build docker images  -->
docker build -t <image_name> redis/.
docker build -t <image_name> postgres/.
docker build -t <image_name> kafka/.
<!-- 3. run and give the container name -->
docker run -d --name <container_name> -p 5433:5432 <image_name>
docker run -d --name <container_name> -p 6380:6379 <image_name>
 docker run -d --name zookeper_dayhan -p 2181:2181 dayhan_zookeper
 docker run -d --name kafka_dayhan -p 9092:9092 dayhan_kafka
<!-- 4. start container -->
docker start <container_name>
<!-- 5. edit the config.yaml -->
cd ..
cd internal/packages/config/config.yaml
<!-- redis file  -->
localhost:6380
<!-- postgres file -->
postgresql://root:password@localhost:5433/dayhan_db?sslmode=disable
<!-- 6. migrate sql up run this -->
migrate -path <path_migration> -database "postgresql://root:password@localhost:5433/dayhan_db?sslmode=disable" -verbose up



<!-- 7. please update your config.yaml file from internal/packages/config/ -->

<!-- 8. go run main.go    from cmd/ where main.go file's path -->