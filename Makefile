.DEFAULT_GOAL := help
DOCKER_USER=sjourdan
PRODUCT=toolbox

build: ## Build container with cache
	docker build -t $(DOCKER_USER)/$(PRODUCT) .

build-nocache: ## Build container without cache
	docker build --no-cache -t $(DOCKER_USER)/$(PRODUCT) .

tests: ## Launch tests
	 docker run --rm  $(DOCKER_USER)/$(PRODUCT) /tmp/tests.sh
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
