docker-compose build
docker-compose up -d postgres
# sleep to let postgres completely up.
sleep 10
docker-compose run app setup_db
docker-compose up -d app
docker-compose up -d nginx
