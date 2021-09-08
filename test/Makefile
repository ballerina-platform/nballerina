TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/*))))

$(TARGETS): $(TDIRS)

$(TDIRS):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../sub.mk tdir=$@ $(MAKECMDGOALS)

clean:
	-rm -fr out

.PHONY: $(TARGETS) $(TDIRS) clean
