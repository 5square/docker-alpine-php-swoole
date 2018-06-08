docker_run:
	docker run -d \
	  --name=swoole_test_run \
		-p 9501:9501 \
		-v $(PWD)/test:/test \
	  $(DOCKER_IMAGE):$(DOCKER_TAG)
	docker ps | grep swoole_test_run
	docker logs -f swoole_test_run

docker_stop:
	docker rm -f swoole_test_run 2> /dev/null; true