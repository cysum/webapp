.PHONY: deploy build

build:
	mkdir -p netvis
	cp -r css index.html netvis

deploy: build
	s3cmd sync netvis s3://lavelle.co --acl-public
