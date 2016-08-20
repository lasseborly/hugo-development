new:
	docker run \
		-it \
		--rm \
		-v `pwd`/site/:/project/site \
		-p 1313:1313 \
		lasseborly/hugo-development \
		hugo new site site

run:
	docker run \
		-it \
		--rm \
		--name hugo-development \
		-v `pwd`/site/:/project/site \
		-p 127.0.0.1:1313:1313 \
		lasseborly/hugo-development \
		hugo server -b http://localhost:1313 --bind=0.0.0.0

build:
	docker build --rm -t lasseborly/hugo-development .
