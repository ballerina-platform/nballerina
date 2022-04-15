TARGETS=test all compile testll

TDIRS= $(sort $(basename $(notdir $(wildcard ../compiler/testSuite/*.balt))))

$(TARGETS): $(TDIRS)

$(TDIRS):
	mkdir -p out/$@
	$(MAKE) -C out/$@ -f ../../balt-sub.mk balt_dir=../../../compiler/testSuite/ tdir=$@ $(MAKECMDGOALS)

.PHONY: $(TARGETS) $(TDIRS)
