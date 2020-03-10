## I was taught to share

Microservices architecture shares nothing and remain bounded . But always this isn't the case, there comes a time , where some of the functionaly needed to be shared across all or few number of services. Say, security service that is responsible for authorization and authentication for user. Assuming security is handled at service level, there is a needed to make a remote call to security service creating network overhead . We can eliminating this by wrapping this into library and using across required services.



![Sharing](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/resource-sharing.png)


Sharing of required resources not only breaks the bounded context, but also introduces several issues, overall relibilty, testabily and deployment


### Techniques for resource sharing 

It easy to avoid anti pattern by not sharing code and remain bounded, pragmatically there will always be some code needs to be shared. 


![Shared Project](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/code-sharing-1.png)


![Shared Project](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/code-sharing-2.png)




