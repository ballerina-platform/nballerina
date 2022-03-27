TARGETS=test all compile testll

TDIR= $(sort $(basename $(notdir ../compiler/testSuite/conformance)))

$(TARGETS): $(TDIR)

$(TDIR):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIR)
