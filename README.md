# ordermgmt-eureka-server
1) pom.xml dependecies<br>
  <properties><br>
	<java.version>8</java.version><br>
	<spring-cloud.version>2020.0.0-M6</spring-cloud.version><br>
  </properties><br>
  <dependecies><br>
      <dependency><br>
	<groupId>org.springframework.cloud</groupId><br>
	<artifactId>spring-cloud-starter-config</artifactId><br>
     </dependency><br>
     <dependency><br>
	<groupId>org.springframework.cloud</groupId><br>
	<artifactId>spring-cloud-starter-netflix-eureka-server</artifactId><br>
     </dependency><br>
  </dependencies>  <br>
  <dependencyManagement><br>
      <dependencies><br>
        <dependency><br>
          <groupId>org.springframework.cloud</groupId><br>
          <artifactId>spring-cloud-dependencies</artifactId><br>
          <version>${spring-cloud.version}</version><br>
          <type>pom</type><br>
          <scope>import</scope><br>
        </dependency><br>
      </dependencies><br>
  </dependencyManagement><br>
2)Annotate springboot application class wih @EnableEurekaServer from org.springframework.cloud.netflix.eureka.server.EnableEurekaServer<br>
3)Add minimum application properties<br>
  spring.application.name=<br>
  server.port=8761(which is default port)<br>
  eureka.client.register-with-eureka=false(to avoid the it self to to eurka server as client)<br>
  eureka.client.fetch-registry=false<br>
