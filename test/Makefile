TARGETS=test all compile

TDIRSLL= $(sort $(addsuffix .ll, $(basename $(notdir $(wildcard ../compiler/testSuite/*)))))
TDIRSWAT= $(sort $(addsuffix .wat, $(basename $(notdir $(wildcard ../compiler/testSuite/01-*)))))

$(TARGETS): $(TDIRSLL) $(TDIRSWAT)

testll: $(TDIRSLL)

testwat: $(TDIRSWAT)

# The filter is so we can say e.g. make 07-error
$(TDIRSLL):
	mkdir -p outll/$(basename $@)
	$(MAKE) -C outll/$(basename $@) -f ../../sub.mk tdir=$(basename $@) $(filter-out $(basename $@), $(MAKECMDGOALS))

$(TDIRSWAT):
	mkdir -p outwat/$(basename $@)
	$(MAKE) -C outwat/$(basename $@) -f ../../wsub.mk tdir=$(basename $@) $(filter-out $(basename $@), $(MAKECMDGOALS))

clean:
	-rm -fr out

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

.PHONY: $(TARGETS) $(TDIRS) clean update diff wtest
