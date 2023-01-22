docker run -d --name temp_restore_container -v restore-data:/var/lib/postgresql/data/ alpine
docker cp ./tmp/backup/data  temp_restore_container:/var/lib/postgresql/
docker stop temp_restore_container
docker rm temp_restore_container