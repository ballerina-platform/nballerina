TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/*))))

COMPILER_JAR=../compiler/target/bin/nballerina.jar
JAVA?= $(shell ./findJava.sh)
error_cases=$(wildcard ../compiler/testSuite/*/*-[e].bal)
error_log=error_log.log

$(TARGETS): $(TDIRS)

# The filter is so we can say e.g. make 07-error
$(TDIRS):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../sub.mk tdir=$@ $(filter-out $@, $(MAKECMDGOALS))

clean:
	-rm -fr out
	-rm -f errorOutput.html

update:
	mkdir -p out
	find out -path "*/ll/*.ll" | sed -e 's;/ll/;/;' -e 's;^out;ll;' | sort > out/ll_curr.txt
	find ll -type f | sort > out/ll_prev.txt
	comm -13 out/ll_curr.txt out/ll_prev.txt | xargs rm -fv
	rm out/ll_curr.txt out/ll_prev.txt
	for f in out/*/ll/*.ll; do \
		ll=`echo $$f | sed -e 's;/ll/;/;' -e 's;^out;ll;'`; \
		cmp -s $$f $$ll || (mkdir -p `dirname $$ll` && cp -p $$f $$ll); \
	done

diff:
	@for f in out/*/ll/*.ll; do \
		ll=`echo $$f | sed -e 's;/ll/;/;' -e 's;^out;ll;'`; \
		[ -e $$ll ] && cmp -s $$f $$ll || echo $$f; \
	done

$(error_log):$(COMPILER_JAR)
	$(JAVA) -jar $(COMPILER_JAR) $(error_cases) 2> $@ || true

$(COMPILER_JAR):
	cd ../compiler && bal build --offline

errorOutput: out/errorOutput.html

out/errorOutput.html: $(error_log) errorOutput.bal $(COMPILER_JAR)
	mkdir -p out
	bal run errorOutput.bal
	rm $(error_log)

.PHONY: $(TARGETS) $(TDIRS) clean update diff
