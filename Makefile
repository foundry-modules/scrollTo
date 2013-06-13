all: modularize minify

include ../../build/modules.mk

MODULE = scrollTo
MODULARIZE_OPTIONS = -jq
SOURCE_DIR = .