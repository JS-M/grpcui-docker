push: login docker
	docker push fguy/grpcui-docker
login:
	docker login
docker:
	docker build -t fguy/grpcui-docker .
