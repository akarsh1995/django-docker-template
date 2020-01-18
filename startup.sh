docker-compose build
docker-compose up -d postgres
sleep 10
docker-compose run app setup_db
docker-compose up app
docker-compose up nginx
