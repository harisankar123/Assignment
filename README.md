# Assignment
Steps required to run the program

1.	Connect to SQL Workbench and create a schema name User and with in that we will create a table.
 
Hashing Function has been implemented in password section
 
2.	Import the complete project in Spring tool suite. The complete application has been built in spring boot framework.(Secured framework) We can use the IDE as Spring tool suite for running the application.
3.	Add the dependencies in Maven under pom.xml file under dependencies section.
4.	 
<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-web</artifactId>
		</dependency>
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-mail</artifactId>
		</dependency>

		<dependency>
			<groupId>mysql</groupId>
			<artifactId>mysql-connector-java</artifactId>
			<scope>runtime</scope>
		</dependency>
		<dependency>
    <groupId>commons-beanutils</groupId>
    <artifactId>commons-beanutils</artifactId>
    <version>1.8.3</version>
</dependency>
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-test</artifactId>
			<scope>test</scope>
		</dependency>
		<dependency>
    <groupId>org.apache.tomcat.embed</groupId>
    <artifactId>tomcat-embed-jasper</artifactId>
   <scope>provided</scope>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-tomcat -->
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-tomcat</artifactId>
<scope>provided</scope>
</dependency>


		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-data-jpa</artifactId>
		</dependency>
		<dependency>
    <groupId>commons-codec</groupId>
    <artifactId>commons-codec</artifactId>
    <version>1.10</version>
</dependency>
		<!-- https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-data-jpa -->
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
 <scope>provided</scope>
</dependency>
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <scope>runtime</scope>
</dependency>
		<!-- https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-devtools -->
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-devtools</artifactId>

</dependency>
<!-- https://mvnrepository.com/artifact/javax.servlet/jstl -->
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
   
</dependency>
<!-- https://mvnrepository.com/artifact/javax.servlet/servlet-api -->
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>servlet-api</artifactId>
    <version>2.5</version>
    <scope>provided</scope>
</dependency>
5.	Kindly add the below script in application property section under resources folder.
spring.mvc.view.prefix=/WEB-INF/view/
spring.mvc.view.suffix=.jsp

spring.datasource.url =jdbc:mysql://localhost:3306/hari?useSSL=False
spring.datasource.username =root
spring.datasource.password =”SQL root Password”
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
server.port=8080


spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5Dialect
1.	logging.level.org.hibernate.SQL=debug
 
Kindly give the default password for your SQL workbench.
6.	Strat the application by relaunching the spring project.
1.	Sign up as new user
2.	Constraints:
1.	Email should contain albany.edu
2.	Password should contain one uppercase, one lowercase and at least one digit with it.
3.	Password length should be more than or equal to 8 characters.



