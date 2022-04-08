TARGETS=test

TDIR= $(sort $(shell find ./ballerina-spec/conformance/lang/expressions/ -name "*.balt" | xargs dirname | rev |cut -d '/' -f 1 | rev))

TESTS = $(shell find ./ballerina-spec/ -name "*.balt")
TRANSFORMED_TESTS = $(shell find ./ballerina-spec/ -name "*.balt" | sed -e "s/.\/ballerina-spec\/conformance\/lang/.\/tests/g")

$(TRANSFORMED_TESTS): update

update: $(TESTS)
	rm -rf tests
	mkdir -p tests
	bal run transform.bal -- $^ --skipList skiplist.txt

report: report/changed.html report/skipped.html report/unchanged.html

report/%.html: report.bal
	bal run report.bal -- --baseDir ./ballerina-spec/conformance/lang/expressions/ --transformedDir ./tests/

clean:
	rm -rf out
	rm -rf tests

$(TARGETS): update $(TDIR)

$(TDIR): $(TRANSFORMED_TESTS)
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIR)

