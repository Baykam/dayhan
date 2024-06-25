DOCKER INTEGRATION PROJECT
<!-- 1. docker run -->
docker-compose up -d
<!-- 2. edit the config.yaml -->
cd ..
cd internal/packages/config/config.yaml
<!-- redis file  -->
localhost:6380
<!-- postgres file -->
postgresql://root:password@localhost:5433/dayhan_db?sslmode=disable
<!-- 3. migrate sql up run this -->
migrate -path <path_migration> -database "postgresql://root:password@localhost:5433/dayhan_db?sslmode=disable" -verbose up
