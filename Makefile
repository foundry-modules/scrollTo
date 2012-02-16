FOUNDRY_DIR = ../..
PRODUCTION_DIR = ${FOUNDRY_DIR}/scripts
DEVELOPMENT_DIR = ${FOUNDRY_DIR}/scripts_
MODULARIZE = ${FOUNDRY_DIR}/build/modularize
UGLIFY = uglifyjs --unsafe -nc

all: scrollTo min

scrollTo:
	${MODULARIZE} -n "scrollTo" jquery.scrollTo.js > ${DEVELOPMENT_DIR}/scrollTo.js

min:
	${UGLIFY} ${DEVELOPMENT_DIR}/scrollTo.js > ${PRODUCTION_DIR}/scrollTo.js
