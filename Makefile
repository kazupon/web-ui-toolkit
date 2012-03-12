WEB_UI_TOOLKIT_LESS = ./less/web-ui-toolkit.less
WEB_UI_TOOLKIT_RESPONSIV_LESS = ./less/responsive.less
WEB_UI_TOOLKIT_TESTS_DIR = ./tests
LESSC = lessc

build: clean
	mkdir -p dist/images
	mkdir -p dist/stylesheets
	mkdir -p dist/javascripts
	${LESSC} ${WEB_UI_TOOLKIT_LESS} > dist/stylesheets/web-ui-toolkit.css
	${LESSC} --compress ${WEB_UI_TOOLKIT_LESS} > dist/stylesheets/web-ui-toolkit.min.css
	${LESSC} ${WEB_UI_TOOLKIT_RESPONSIV_LESS} > dist/stylesheets/web-ui-toolkit-responsive.css
	${LESSC} --compress ${WEB_UI_TOOLKIT_RESPONSIV_LESS} > dist/stylesheets/web-ui-toolkit-responsive.min.css

test: build
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/clearfix/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/clearfix/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/center-block/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/center-block/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/border-radius/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/border-radius/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/box-shadow/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/box-shadow/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/container/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/container/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/fixed-container/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/fixed-container/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/flexible-container/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/flexible-container/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/grid-system/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/grid-system/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/flexible-grid-system/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/flexible-grid-system/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/icon-font/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/icon-font/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/basic-html-elements/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/basic-html-elements/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/navigationbar/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/navigationbar/style.css

clean:
	rm -rf dist/images
	rm -rf dist/stylesheets
	rm -rf dist/javascripts

.PHONY: dist clean build
