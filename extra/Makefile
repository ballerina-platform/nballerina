BAL?=bal
BAL_BUILD_FLAGS?= --offline
SUBDIRS=regex.d
TARGETS=regex

regex:
	$(MAKE) target=build regex.d

$(SUBDIRS):
	$(MAKE) -C $(basename $@) $(target)

.PHONY: $(TARGETS) $(SUBDIRS)
