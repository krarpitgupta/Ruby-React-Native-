TAGS := @run
IMAGE_NAME = qe-automation

build-runner-image:
	docker build \
	--build-arg HTTP_PROXY=$(HTTP_PROXY) \
	--build-arg HTTPS_PROXY=$(HTTPS_PROXY) \
	-t e2e-runner .

test:
	# Create a folder to store artifacts.
	mkdir -p reports;

	# Run tunnel
	# nohup $(SAUCE_CONNECT_PATH) \
	# -p $(HTTPS_PROXY) \
	# -u $(SAUCELAB_USER) \
	# -k $(SAUCELAB_ACCESSKEY) \
	# -T --no-remove-colliding-tunnels &

  	# Run test automation
	docker run --env-file=saucelab.${platform}.env \
	--name qe-automation \
	-e SAUCELAB_USER=$(SAUCELAB_USER) \
	-e SAUCELAB_ACCESSKEY=$(SAUCELAB_ACCESSKEY) \
	-e TAGS=$(TAGS) \
	-e HTTP_PROXY=$(HTTP_PROXY) \
	-e HTTPS_PROXY=$(HTTPS_PROXY) \
	-e TEST_RAIL_FLAG=$(TEST_RAIL_FLAG) \
	-e TEST_RAIL_RUN_ID=$(TEST_RAIL_RUN_ID) \
	-e SAUCELAB_JOBNAME=$(IMAGE_NAME)$(subst @,-,${TAGS}) \
	-v `pwd`:/qe-automation \
	--name $(IMAGE_NAME)$(subst @,-,${TAGS}) \
	e2e-runner;

	# Kill container
	docker stop $(IMAGE_NAME)$(subst @,-,${TAGS});
	docker rm $(IMAGE_NAME)$(subst @,-,${TAGS});