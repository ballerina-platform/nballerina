cd types
call bal build -c
call bal push --repository=local
cd ..\bir
call bal build -c --skip-tests
call bal push --repository=local
cd ..\front
call bal build -c  --skip-tests
call bal push --repository=local
cd ..\llvm
call bal build -c  --skip-tests
call bal push --repository=local
cd ..\driver
call bal build
cd ..
