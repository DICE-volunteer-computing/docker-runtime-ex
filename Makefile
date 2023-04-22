SHELL := /bin/zsh

PROJECT := $(shell basename "$$PWD")
PWD := $(PWD)

all:
	@echo ''
	@echo "DICE Runtime Examples - Docker & Python"
	@echo "Vale Tolpegin (valetolpegin@gmail.com)"
	@echo ''
	@echo "-----------------------"
	@echo ''
	@echo " Project: $(PROJECT)"
	@echo ''

init:
	@echo ''

clean:
	@rm -rf target
	@rm -rf data/output/*.json

build:
	@mkdir -p data/output
	@docker build -t $(PROJECT) .

test:
	@mkdir -p data/output
	@docker run -it --network none --rm --mount type=bind,source=$(PWD)/data/input,target=/input --mount type=bind,source=$(PWD)/data/output,target=/output $(PROJECT)
