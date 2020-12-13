# ordermgmt-eureka-server
1) pom.xml dependecies
  <properties>
		<java.version>8</java.version>
		<spring-cloud.version>2020.0.0-M6</spring-cloud.version>
	</properties>
  <dependecies>
      <dependency>
			<groupId>org.springframework.cloud</groupId>
			<artifactId>spring-cloud-starter-config</artifactId>
		</dependency>
		<dependency>
			<groupId>org.springframework.cloud</groupId>
			<artifactId>spring-cloud-starter-netflix-eureka-server</artifactId>
		</dependency>
  </dependencies>  
    <dependencyManagement>
      <dependencies>
        <dependency>
          <groupId>org.springframework.cloud</groupId>
          <artifactId>spring-cloud-dependencies</artifactId>
          <version>${spring-cloud.version}</version>
          <type>pom</type>
          <scope>import</scope>
        </dependency>
      </dependencies>
	 </dependencyManagement>
2)Annotate springboot application class wih @EnableEurekaServer from org.springframework.cloud.netflix.eureka.server.EnableEurekaServer
3)Add minimum application properties
  spring.application.name=
  server.port=8761(which is default port)
  eureka.client.register-with-eureka=false(to avoid the it self to to eurka server as client)
  eureka.client.fetch-registry=false
