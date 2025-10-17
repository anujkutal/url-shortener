include .envrc


.PHONY: run
run:
	@go run ./cmd/api -db-dsn=${DB_DSN}


.PHONY: migrate-create
migrate-create:
	@migrate create -seq -ext=.sql -dir=./migrations ${name}


.PHONY: migrate-up
migrate-up:
	@migrate -path ./migrations -database ${DB_DSN} up
