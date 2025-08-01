# Makefile para comandos Docker útiles

# Variables
COMPOSE_FILE = docker-compose.yml
COMPOSE_DEV_FILE = docker-compose.dev.yml

# Ayuda
help:
	@echo "Comandos disponibles:"
	@echo "  make build         - Construir todas las imágenes"
	@echo "  make up            - Levantar todos los servicios en producción"
	@echo "  make down          - Detener todos los servicios"
	@echo "  make dev           - Levantar servicios en modo desarrollo"
	@echo "  make dev-down      - Detener servicios de desarrollo"
	@echo "  make logs          - Ver logs de todos los servicios"
	@echo "  make logs-backend  - Ver logs del backend"
	@echo "  make logs-frontend - Ver logs del frontend"
	@echo "  make clean         - Limpiar contenedores, imágenes y volúmenes no utilizados"
	@echo "  make rebuild       - Reconstruir y reiniciar servicios"
	@echo "  make db-shell      - Conectar a la base de datos PostgreSQL"

# Construcción
build:
	docker-compose -f $(COMPOSE_FILE) build

# Servicios de producción
up:
	docker-compose -f $(COMPOSE_FILE) up -d

down:
	docker-compose -f $(COMPOSE_FILE) down

restart:
	docker-compose -f $(COMPOSE_FILE) restart

# Servicios de desarrollo
dev:
	docker-compose -f $(COMPOSE_DEV_FILE) up -d

dev-down:
	docker-compose -f $(COMPOSE_DEV_FILE) down

dev-build:
	docker-compose -f $(COMPOSE_DEV_FILE) build

# Logs
logs:
	docker-compose -f $(COMPOSE_FILE) logs -f

logs-backend:
	docker-compose -f $(COMPOSE_FILE) logs -f backend

logs-frontend:
	docker-compose -f $(COMPOSE_FILE) logs -f frontend

logs-db:
	docker-compose -f $(COMPOSE_FILE) logs -f postgres

# Mantenimiento
clean:
	docker system prune -f
	docker volume prune -f

rebuild:
	docker-compose -f $(COMPOSE_FILE) down
	docker-compose -f $(COMPOSE_FILE) build --no-cache
	docker-compose -f $(COMPOSE_FILE) up -d

# Base de datos
db-shell:
	docker-compose -f $(COMPOSE_FILE) exec postgres psql -U crm_user -d crm_database

db-backup:
	docker-compose -f $(COMPOSE_FILE) exec postgres pg_dump -U crm_user crm_database > backup_$(shell date +%Y%m%d_%H%M%S).sql

# Servicios individuales
backend-shell:
	docker-compose -f $(COMPOSE_FILE) exec backend sh

frontend-shell:
	docker-compose -f $(COMPOSE_FILE) exec frontend sh

# Comandos de desarrollo específicos
dev-logs:
	docker-compose -f $(COMPOSE_DEV_FILE) logs -f

dev-backend-shell:
	docker-compose -f $(COMPOSE_DEV_FILE) exec backend-dev sh

.PHONY: help build up down restart dev dev-down dev-build logs logs-backend logs-frontend logs-db clean rebuild db-shell db-backup backend-shell frontend-shell dev-logs dev-backend-shell
