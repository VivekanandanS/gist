# Use multiple threads for install and build
mvn -T 1C install 

# clean 
mvn clean

# run spring app
mvn spring-boot:run

# test
mvn test

# test a single class
mvn test -Dtest=ClassName

# test a single function
mvn test -Dtest=ClassName#functionNam






