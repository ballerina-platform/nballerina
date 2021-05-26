rd /s /q \Users\jjc\.ballerina\repositories\local
cd types
call bal build -c --skip-tests
call bal push --repository=local
cd ..\front
call bal build -c  --skip-tests
call bal push --repository=local
cd ..\semtype
call bal build
cd ..

