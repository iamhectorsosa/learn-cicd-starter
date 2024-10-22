all:
	@echo "**********************************************************"
	@echo "**                      Makefile                        **"
	@echo "**********************************************************"

build:
	./scripts/buildprod.sh

test:
	go test ./... -cover

sec:
	gosec ./...

format:
	go fmt ./...

vet:
	go vet ./...
	staticcheck ./...
