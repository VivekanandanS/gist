## Data-Driven Migration Anti Pattern

When migrating a monolithic application to a microservice architechure, two things need to be taken care of. Splitting functionality of monolith application into individual services and migrating a monolith data to a small database owned by individual service.

![Data Migration : Monolith to Microservices](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/datamigration.png)

The above illustration shows microservices architecture broken down from a monolith, which has three services with bounded context, no shared state owing to its data. Let's see what happens during the migration process.

### Large Volume of Data is being Migrated !!

Decided to migrate from a monolith to microservices architecture, a large amount of time is being spent on how to and where to break the monolith and what data does it own. The main problem with this migration is that we rarely understand the granularity of each service right for the first time. We would jump right into the problem and make the services too fine-grained. The efforts will be the migration of functionality as well as the data. But then at later point, it doesn't make sense having two service and then end up consolidating both into single service 


![Data Migration : Fine-grained Services](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/fine-grained.png)


Data migration are more complex and error prone, much more so than source code migration. Understanding risk involved into data migration and knowing the importance of data over functionality helps avoing this problem.


## Functionality first :)

This problem can be avoided by first migration the functionality of service first and keep it corse-grained. Even though service is not bounded by context, two or more services share the same data store. Learning more about the service over a while, the level of granularity can be estimated; by which service can be either split or consolidated. After satisfying the level of granularity, data can be migrated. Thus by forming the bounded context between service and data layer.


![Data Migration : Fine-grained Services](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/level-of-granularity.png)