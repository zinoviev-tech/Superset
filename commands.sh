docker volume create postgres_vol_1
docker volume create postgres_vol_2
docker volume create clickhouse_vol

docker network create app_net

docker run --rm -d \
  --name postgres_1 \
  -e POSTGRES_PASSWORD=postgres_admin
  -e POSTGRES_user=postgres_admin
  -e 
  
