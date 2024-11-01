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
	sed -i '' -e 's|\.\./components/|./|g' -e 's|./components/|./|g' build/*.html
	sed -i '' -e 's|\.\./templates/|./|g' -e 's|./templates/|./|g' build/*.html

copy-CNAME:
	cp CNAME build

copy-resume:
	cp vedant-panchal-resume.pdf build

demo:
	mkdir -p build/demo
	cp components/unused/* build/demo/