.PHONY: all copy-assets copy-images copy-HTMLs copy-CNAME copy-resume

all: copy-assets copy-images copy-HTMLs copy-CNAME copy-resume

copy-assets:
	cp -r assets build

copy-images:
	cp -r images build

copy-HTMLs:
	cp ./components/* build
	cp ./templates/* build
	cp index.html build

copy-CNAME:
	cp CNAME build

copy-resume:
	cp vedant-panchal-resume.pdf build