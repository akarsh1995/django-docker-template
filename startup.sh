docker-compose build
docker-compose up -d postgres
docker-compose run app setup_db
sleep 10
docker-compose up app
docker-compose up nginx
