cd ./target/thin/root

java -jar apache-camel-engine.jar --thin.root=. --thin.trace=true --thin.location=file:.,classpath:. --thin.compute=true

pause