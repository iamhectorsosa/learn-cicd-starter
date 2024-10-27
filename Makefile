all:
	@echo "**********************************************************"
	@echo "**                      Makefile                        **"
	@echo "**********************************************************"

build:
	./scripts/buildprod.sh

migrations:
	./scripts/migrateup.sh

test:
	go test ./... -cover

sec:
	gosec ./...

format:
	go fmt ./...

vet:
	go vet ./...
	staticcheck ./...
