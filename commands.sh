#Postgres

docker volume create postgres_vol_1
docker volume create postgres_vol_2
docker volume create clickhouse_vol

docker network create app_net

docker run --rm -d \
  --name postgres_1 \
  -e POSTGRES_PASSWORD=postgres_admin \
  -e POSTGRES_USER=postgres_admin \
  -e POSTGRES_DB=test_app \
  -v postgres_vol_1:/var/lib/postgresql/data \
  --net=app_net \
  postgres:14

#Superset

-it superset superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin

docker exec -it superset superset db upgrade
docker exec -it superset superset load_examples
