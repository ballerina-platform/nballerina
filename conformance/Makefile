TARGETS=test all compile testll

TDIR= $(sort $(basename $(notdir ../conformance/tests)))

TESTS = $(shell find . -name "*.balt")

update: $(TESTS)
	rm -rf tests
	mkdir -p tests
	bal run transform.bal -- $^

clean:
	rm -rf out

$(TARGETS): $(TDIR)

$(TDIR):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIR)

