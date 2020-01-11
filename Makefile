IMAGE := bonny1992/baseimage
DOCKERFILE := Dockerfile.alpine

test:
	true

image:
	docker build -t $(IMAGE) -f $(DOCKERFILE) .

push-image:
	docker push $(IMAGE)


.PHONY: image push-image test