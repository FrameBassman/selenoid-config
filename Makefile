start-selenoid:
	docker pull selenoid/vnc:chrome_65.0
	docker-compose \
		--project-directory=${PWD} \
		--project-name=selenoid-config \
		-f deploy/docker-compose.yml \
		up

stop-selenoid:
	docker-compose \
		--project-directory=${PWD} \
		--project-name=selenoid-config \
		-f deploy/docker-compose.yml
		down