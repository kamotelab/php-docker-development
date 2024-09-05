ifneq (,$(wildcard ./.env))
    include .env
    export
endif

init:
	docker buildx build . -t ${APPLICATION_NAME}:latest

start:
	docker compose up -d
	
stop:
	docker compose down

sh:
	${EXEC} -it --user 1000 web bash

root:
	${EXEC} -it web bash