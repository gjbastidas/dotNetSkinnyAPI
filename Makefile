docker-push:
	@ docker login && \
		docker push gjbastidas/dotnetsimpleapi

docker-build:
	@ docker build -t gjbastidas/dotnetsimpleapi .