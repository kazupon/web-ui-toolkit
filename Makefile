WEB_UI_TOOLKIT_LESS = ./less/web-ui-toolkit.less
LESSC = lessc

build: clean
	mkdir -p dist/images
	mkdir -p dist/stylesheets
	mkdir -p dist/javascripts
	${LESSC} ${WEB_UI_TOOLKIT_LESS} > dist/stylesheets/web-ui-toolkit.css
	${LESSC} --compress ${WEB_UI_TOOLKIT_LESS} > dist/stylesheets/web-ui-toolkit.min.css

clean:
	rm -rf dist/images
	rm -rf dist/stylesheets
	rm -rf dist/javascripts

.PHONY: dist clean build
