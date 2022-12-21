TARGETS=test updateSpec updateTests
TEST_DESTINATION=./tests/
TDIR=$(sort $(shell test -d $(TEST_DESTINATION) && find $(TEST_DESTINATION) -name "*.balt" | xargs dirname | rev |cut -d '/' -f 1 | rev))
TESTS=$(shell find $(TEST_SOURCE) -name "*.balt")
TRANSFORMED_TESTS=$(shell test -d $(TEST_DESTINATION) && find $(TEST_DESTINATION) -name "*.balt")

updateSpec:
	git submodule foreach git pull origin master

updateTests:$(TESTS)
	rm -rf tests
	mkdir -p tests
	rm -rf out
	bal run transform.bal -- $^ --skipList skiplist.txt

test: $(TDIR)

$(TDIR): $(TRANSFORMED_TESTS)
	if [ -d "tests/$@" ]; then \
		mkdir -p out/$@ && \
		$(MAKE) -C out/$@ -f ../../balt-sub.mk tdir=$@ balt_dir=../../tests/$@ $(MAKECMDGOALS); \
	fi

.PHONY: $(TARGETS) $(TDIR)
