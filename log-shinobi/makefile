.DEFAULT: build

.PHONY: build
build:
	./script.sh > feed.xml

serve: build
	python3 -m http.server --directory .

