# 1.Initial setup
After cloning the repository update the submodules by running fallowing command in the project root (`nballerina`) directory
```
git submodule update --init --recursive
```
__This needs to be done only once__
# 2.Running conformance tests
(Assuming you are in the root directory)
1. Build the compiler
```
make
```
2. run `make test` (or `make`) in the conformance directory (This will update the ballerina-spec to the latest)
```
make test -C conformance
```

# 3.Generate reports
To generate detailed report regarding any changes (skipped/transformed) done to conformance tests in step 2 execute `make report` to obtain `./conformance/reports/report.html` file.
You can find transformed tests in the `conformance/tests/` directory

## Skipping tests based on a label
If you want to skip any test having a given label add it to the `skiplist.txt` in a new line.
ex:
```
...
skip-label
...
```
If you want to skip any test having all the given labels add them as a space separated line to the `skiplist.txt` file

```
...
skip-label1 skip-label2
...
```
### (Optional) skipping a specific test
Update the `skipTest` variable in transform.bal with the name of the file and index (staring from 1).
## Understanding unexpected errors when running tests
If an error occurred while compiling the test (such as valid test having an error) you will get an error message as fallows
```
unexpected error in ../../tests/expressions/list_constructor.balt test: 5
```
This tells you that the 5th test (index starting from 1) in the file `list_constructor.balt` failed. (Please note that if you want to skip this test by setting its index in the `skipTest` variable you need to use the index relevant to the test in original file (in `ballerina-spec/conformance`) not the relevant to the transformed test shown here).
