TARGETS=test all compile testll

TDIR= $(sort $(basename $(notdir ../conformance/tests)))

$(TARGETS): $(TDIR)

$(TDIR):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIR)
