TESTS = $(shell find . -name "*.balt")

update: $(TESTS)
	bal run transform.bal -- $^
