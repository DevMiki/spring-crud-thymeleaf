# Product Manager (Spring Boot + Thymeleaf)

Simple CRUD web app built with Spring Boot, Thymeleaf, Spring Data JPA, and MySQL. It manages a list of products with create, edit, and delete flows.

## Features
- List all products on the home page
- Create a new product
- Edit an existing product
- Delete a product

## Tech stack
- Java 8
- Spring Boot 2.3.1
- Spring MVC + Thymeleaf
- Spring Data JPA (Hibernate)
- MySQL
- Maven

## Project structure
- `src/main/java/net/codejava/AppController.java` - MVC routes and page wiring
- `src/main/java/net/codejava/Product.java` - JPA entity
- `src/main/java/net/codejava/ProductRepository.java` - Spring Data repository
- `src/main/java/net/codejava/ProductService.java` - CRUD service
- `src/main/resources/templates/` - Thymeleaf templates
- `src/main/resources/application.properties` - datasource configuration

## Prerequisites
- Java 8 (or compatible)
- Maven
- MySQL running locally

## Database setup
The app expects a MySQL database named `salesdb` and uses explicit schema (no auto DDL).

Update connection settings in `src/main/resources/application.properties`:
```
spring.datasource.url=jdbc:mysql://127.0.0.1:3306/salesdb?autoReconnect=true&serverTimezone=UTC&useSSL=false
spring.datasource.username=noot
spring.datasource.password=noot
```

Create the table:
```sql
CREATE DATABASE IF NOT EXISTS salesdb;
USE salesdb;

CREATE TABLE IF NOT EXISTS product (
  id BIGINT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  brand VARCHAR(255),
  madein VARCHAR(255),
  price FLOAT,
  PRIMARY KEY (id)
);
```

## Run the app
From the project root:
```
./mvnw spring-boot:run
```

Then open:
```
http://localhost:8080/
```

## Routes
- `GET /` - list products
- `GET /new` - new product form
- `POST /save` - save product
- `GET /edit/{id}` - edit product form
- `GET /delete/{id}` - delete product

## Notes
- The app uses `spring.jpa.hibernate.ddl-auto=none`, so the table must exist before running.
- Change database credentials and URL as needed for your environment.
