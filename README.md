# Kafdrop

Kafdrop is a UI for monitoring Apache Kafka clusters. The tool displays information such as brokers, topics, partitions, and even lets you view messages. It is a light weight application that runs on Spring Boot and requires very little configuration.

## Requirements

* Java 8
* Kafka (0.8.1 or 0.8.2 is known to work)
* Zookeeper (3.4.5 or later)

## Building

After cloning the repository, building should just be a matter of running a standard Maven build:

```
$ mvn clean package
```

## Running Stand Alone

The build process creates a war file.


## Kafka APIs

Starting with version 2.0.0, Kafdrop offers a set of Kafka APIs that mirror the existing HTML views. Any existing endpoint can be returned as JSON by simply setting the *Accept : application/json header*. There are also two endpoints that are JSON only:

    /topic : Returns array of all topic names
    /topic/{topicName}/{consumerId} : Return partition offset and lag details for a specific topic and consumer.

## Swagger

To help document the Kafka APIs, Swagger has been included. The Swagger output is available by default at the following Kafdrop URL:

    /v2/api-docs
    
However this can be overridden with the following configuration:

    springfox.documentation.swagger.v2.path=/new/swagger/path

Currently only the JSON endpoints are included in the Swagger output; the HTML views and Spring Boot debug endpoints are excluded.

You can disable Swagger output with the following configuration:

    swagger.enabled=false

## CORS Headers

Starting in version 2.0.0, Kafdrop sets CORS headers for all endpoints. You can control the CORS header values with the following configurations:

    cors.allowOrigins (default is *)
    cors.allowMethods (default is GET,POST,PUT,DELETE)
    cors.maxAge (default is 3600)
    cors.allowCredentials (default is true)
    cors.allowHeaders (default is Origin,Accept,X-Requested-With,Content-Type,Access-Control-Request-Method,Access-Control-Request-Headers,Authorization)
    
You can also disable CORS entirely with the following configuration:

    cors.enabled=false
