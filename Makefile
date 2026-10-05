CHILD_MAKEFILES_DIRS = $(sort $(dir $(wildcard Modules/*/*/Makefile)))

swiftgen:
	@for d in $(CHILD_MAKEFILES_DIRS); do ( cd $$d && make swiftgen; ); done

.PHONY: swiftgen
