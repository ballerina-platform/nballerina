COMPILER = ../../compiler/target/bin/nballerina.jar
JAVA = $(shell ../../test/findJava.sh)
bal_files = $(wildcard ../../compiler/testSuite/*/*-[e].bal)
TDIRS= $(sort $(basename $(notdir $(wildcard ../../compiler/testSuite/*))))
test_logs = $(addsuffix .log, $(subst ../../compiler/testSuite, logs, $(bal_files)))

log: $(TDIRS) $(test_logs)

$(TDIRS):
	mkdir -p logs/$@

logs/%.log: ../../compiler/testSuite/%
	$(JAVA) -jar $(COMPILER) $^ 2> $@ || true

clean:
	rm -rf logs
