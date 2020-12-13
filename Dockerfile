FROM openjdk:8
ADD target/eureka-server-food-1214PM.jar /apps/eureka-server-food.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "/apps/eureka-server-food.jar"]