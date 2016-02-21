all: download build publish

download:
	wget --continue https://releases.hashicorp.com/serf/0.7.0/serf_0.7.0_linux_amd64.zip
	unzip -o serf_0.7.0_linux_amd64.zip

build:
	docker build -t quay.io/phamhongviet/serf:0.7.0 .
	docker build -t quay.io/phamhongviet/serf:latest .

publish:
	docker push quay.io/phamhongviet/serf:0.7.0
	docker push quay.io/phamhongviet/serf:latest

clean:
	rm -f serf_0.7.0_linux_amd64.zip
	rm -f serf
