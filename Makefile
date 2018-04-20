start-selenoid:
	docker pull selenoid/vnc:chrome_65.0
	docker-compose \
		--project-directory=${PWD} \
		-f deploy/docker-compose.yml
		up

stop-selenoid
	docker-compose \
		--project-directory=${PWD} \
		-f deploy/docker-compose.yml
		down