TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/*))))

$(TARGETS): $(TDIRS)

$(TDIRS):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../sub.mk tdir=$@ $(MAKECMDGOALS)

clean:
	-rm -fr out

update:
	for f in out/*/ll/*.ll; do \
		ll=`echo $$f | sed -e 's;/ll/;/;' -e 's;^out;ll;'`; \
		cmp -s $$f $$ll || (mkdir -p `dirname $$ll` && cp -p $$f $$ll); \
	done

.PHONY: $(TARGETS) $(TDIRS) clean update
