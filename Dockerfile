FROM openjdk:11.0
COPY target/my-gfg-calculator.jar my-gfg-calculator.jar
CMD java -jar my-gfg-calculator.jar