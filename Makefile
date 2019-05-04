push: login docker
	docker push ethermoon/grpcui-docker
login:
	docker login
docker:
	docker build -t ethermoon/grpcui-docker .
