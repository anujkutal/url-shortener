include .envrc

.PHONY: run
run:
	@go run ./cmd/api -db-dsn=${DB_DSN}
