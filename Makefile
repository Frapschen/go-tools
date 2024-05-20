include Makefile.Common

.PHONY: all
all: install-tools

KEYS = key1 key2 key3
VALUES = value1 value2 value3

define get_value
$(word $(shell echo $$(($(foreach k,$(KEYS),$(if $(findstring $1,$k),$(words $(KEYS))))) + 1)),$(VALUES))
endef

