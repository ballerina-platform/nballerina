cd bir
call bal build -c
call bal push --repository=local
cd ..\types
call bal build -c --skip-tests
call bal push --repository=local
cd ..\front
call bal build -c  --skip-tests
call bal push --repository=local
cd ..\semtype
call bal build
cd ..
