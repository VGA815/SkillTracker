start:
	docker compose up -d
clear:
	docker compose down --volumes
restart:
	make clear
	make start
