TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/01-*))))

$(TARGETS): $(TDIRS)

# The filter is so we can say e.g. make 07-error
$(TDIRS):
	mkdir -p out/$@
	@if [ $(wat) = "true" ]; then\
    	$(MAKE) -C out/$@ -f ../../wsub.mk tdir=$@ $(filter-out $@, $(MAKECMDGOALS));\
	else\
		$(MAKE) -C out/$@ -f ../../sub.mk tdir=$@ $(filter-out $@, $(MAKECMDGOALS));\
    fi

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
