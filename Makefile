
# Start the Docker Compose stack.
up:
	docker compose up -d

# Stop the Docker Compose stack.
down:
	docker compose down

front:
	docker exec -ti my-medusa-store-storefront sh

back:
	docker exec -ti my-medusa-store-backend sh
