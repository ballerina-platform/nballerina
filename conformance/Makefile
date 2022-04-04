TARGETS=test all compile testll

TDIR= $(sort $(basename $(notdir $(wildcard ../conformance/tests/*))))

TESTS = $(shell find ./ballerina-spec/ -name "*.balt")

update: $(TESTS)
	rm -rf tests
	mkdir -p tests
	bal run transform.bal -- $^ --skipList skiplist.txt

report: report.bal
	bal run report.bal -- --baseDir ./ballerina-spec/conformance/lang/expressions/ --transformedDir ./tests/

clean:
	rm -rf out

$(TARGETS): $(TDIR)

$(TDIR):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIR)

