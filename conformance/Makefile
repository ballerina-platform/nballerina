TARGETS=test
TEST_SOURCE=./ballerina-spec/conformance/lang/expressions/

test:
	$(MAKE) -C . -f conformance.mk updateSpec
	$(MAKE) -C . -f conformance.mk updateTests
	$(MAKE) -C . -f conformance.mk test

report: report/report.html

report/%.html: report.bal
	bal run report.bal -- --baseDir $(TEST_SOURCE) --transformedDir ./tests/

clean:
	rm -rf out
	rm -rf tests

.PHONY: $(TARGETS)
