TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/*))))

$(TARGETS): $(TDIRS)

# The filter is so we can say e.g. make 07-error
$(TDIRS):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../sub.mk tdir=$@ $(filter-out $@, $(MAKECMDGOALS))

clean:
	-rm -fr out

update:
	for f in out/*/ll/*.ll; do \
		ll=`echo $$f | sed -e 's;/ll/;/;' -e 's;^out;ll;'`; \
		cmp -s $$f $$ll || (mkdir -p `dirname $$ll` && cp -p $$f $$ll); \
	done

.PHONY: $(TARGETS) $(TDIRS) clean update
