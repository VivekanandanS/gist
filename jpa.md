## JPA : Java Presistance API 

JPA is a specification , It's lightweight , POJO based framework , used to presist java objects into relational database

### How it maps ??
Some metadata is needed to map the data to database

### JPA Components :  
	Entity 
	Entity Manager 
	Entity Manager Factory
    Entity Transaction
    Presistance
    Presistance Unit

#### Entity
	
Entity is a simple POJO Class which represents the table in the database.
Each instance of the class represents record in the table
Class can be presisted in database by simply annotating it with @Entity.
Presistant State of Entity is represented through its presistant feild or presistant properties
Feilds or Properties use object/relation mapping annotation to map the entities and entities relationship to the relational data in the underlying data store
Entity is uniquely identified by the presistence identity which is primary key of the table.
   
#### Entity Manager
  
Entity mangaer provides API for interacting with Entity . 
With Entity Manager ,we  can presist entity, change state of entity and remove the entity from the database. 
  
#### Entity Manager Factory 
  
Entity Manager Factory is used to create the instance of Entity Manager
Its necessary to close the EMF when app crashes or shutsdown.

#### Entity Transaction

All kinds of operation performed by entity manager are encapsulated within transaction considering the whole as single unit. Entity transaction is created using entity manager.

#### Query & Criteria

Entity manger presist object either by query or criteria api . 
Query api allows to execute sql query .
Criteria api allows to presist java objects without writing a query .


### Entity Relationship

Entites can be related to each other in one or other ways 

#### One to One 
Each entity instance is related to single instance of another entity.

#### One to Many
Each entity instance is related to multiple instance of another entity 

#### Many to One
Multiple instances of entity is realted to single instance of another entity

#### Many to Many
Multiple instance of entity is realted to multiple instance of another entity


### Direction of Relationship

Uni-directional 
Bi-directional 

#### Uni Directional Relationship

Unidirectinal has only owing side

#### BiDirectional Relationship

Bidirectional has both owing side and inverse side .
In Bidirectional ,  entity has properties or feilds that has refers to other entity.

Rules:  
#1 Inverse side of relationship must refer to owing side of relationship using mappedBy element of @OnetoOne , OnetoMany , ManytoMay annotation  

#2 Many side of @ManytoOne relationship should not use mappedBy. Many side is alway the owing side of the relationship

#3 In @OnetoOne relationship , owning side corresponds to the side which contains the foreign key.
( Simply owning side is table that has foreign key and refers to primary table )

#4 In @ManytoMany relationship both sides can be owing side.

** mappedby refers to primary table  
** Owning side determines , how presistance runtime makes update to relationship in database.  





  
  
   
    



