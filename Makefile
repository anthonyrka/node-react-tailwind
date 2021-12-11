IMAGE_NAME=node-dev
HISTORY_FILE=.image_bash_history

build:
	docker build -t $(IMAGE_NAME) .

run:
	touch $(PWD)/$(HISTORY_FILE)
	docker run -it \
			   --rm \
                           --entrypoint=bash \
			   -e HISTFILE=/root/$(HISTORY_FILE) \
			   -v $(PWD)/$(HISTORY_FILE):/root/$(HISTORY_FILE) \
                           -v $(PWD):/home/app/ \
                           -p 3000:3000 \
                           $(IMAGE_NAME)
