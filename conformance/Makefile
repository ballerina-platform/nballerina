TARGETS=test
TEST_SOURCE = ./ballerina-spec/conformance/lang/expressions/
TDIR=$(sort $(shell find $(TEST_SOURCE) -name "*.balt" | xargs dirname | rev |cut -d '/' -f 1 | rev))
TESTS=$(shell find $(TEST_SOURCE) -name "*.balt")
TRANSFORMED_TESTS=$(shell find $(TEST_SOURCE) -name "*.balt" | sed -e "s/.\/ballerina-spec\/conformance\/lang/.\/tests/g")

.DEFAULT_GOAL := test

$(TRANSFORMED_TESTS): update

update: $(TESTS)
	git submodule foreach git pull origin master
	rm -rf tests
	mkdir -p tests
	rm -rf out
	bal run transform.bal -- $^ --skipList skiplist.txt

report: report/report.html

report/%.html: report.bal
	bal run report.bal -- --baseDir $(TEST_SOURCE) --transformedDir ./tests/

clean:
	rm -rf out
	rm -rf tests

$(TARGETS): $(TDIR)

$(TDIR): $(TRANSFORMED_TESTS)
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ balt_dir=../../tests/$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIR)
