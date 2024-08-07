setup: .env compose.yml nginx-conf/nginx.conf
	docker-compose up -d
	docker-compose exec wordpress bash /var/www/html/configure-wordpress.sh
	sudo chown -R $(USER):$(USER) .

start:
	docker-compose up -d

stop:
	docker-compose down

.PHONY: setup start stop