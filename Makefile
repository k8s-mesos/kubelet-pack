NAME     = k8smesos/kubelet-pack
REPO     = git@github.com:k8s-mesos/kubelet-pack.git
LOCAL    = 192.168.33.10
VERSIONS = $(foreach df,$(wildcard */Dockerfile),$(df:%/Dockerfile=%))

all: build

build: $(VERSIONS)

branches:
	git fetch $(REPO) master
	@$(foreach tag, $(VERSIONS), git branch -f $(tag) FETCH_HEAD;)
	@$(foreach tag, $(VERSIONS), git push $(REPO) $(tag);)
	@$(foreach tag, $(VERSIONS), git branch -D $(tag);)

.PHONY: all build $(VERSIONS)
$(VERSIONS):
	docker build --rm --tag=$(NAME):$@ $@
	docker tag --force ${NAME}:$@ ${LOCAL}/${NAME}:$@
	docker push ${LOCAL}/${NAME}:$@
	docker rmi ${LOCAL}/${NAME}:$@
