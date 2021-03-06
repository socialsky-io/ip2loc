fix-permissions:
	echo "Changing ownership of project files to current user"
	sudo chown $(USER):$(USER) . -R

up:
	docker-compose up -d
down:
	docker-compose down
rebuild:
	docker-compose build ip2loc
shell:
	docker-compose exec --user=application ip2loc sh
logs:
	docker-compose logs -f --tail=10 ip2loc