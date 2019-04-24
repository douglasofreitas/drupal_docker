.PHONY: run stop clean log

run:
	docker-compose up -d

stop:
	docker-compose stop

clean:
	docker-compose down
	
log:
	docker logs -f --details drupal-web

exec:
	docker exec -it drupal-web bash
