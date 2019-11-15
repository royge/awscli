build:
	docker build --pull -t awscli:latest .
	docker tag awscli:latest royge/awscli:latest

push:
	docker push royge/awscli:latest

pre-test:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

test:
	container-structure-test test \
		--image awscli:latest \
		--config test-config.yml
