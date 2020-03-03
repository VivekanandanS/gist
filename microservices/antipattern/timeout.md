## Timeout Anti Pattern

In microservices environment, services usally be distributed across the plaftorm or any be across the region. Only way service can interact with one another using a standard set of communication protocol.Challenges faced in any distributed environment is availability and responsiveness . Eventhough both are service communication in the nutshell, but they are very different things


![Data Migration : Fine-grained Services](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/availability-reponsiveness.png)

Availabiliy : Does system stays online all the time, so that any consumer can connect and send request !!
Responsiveness : Does the system capable of responding to all the request within the stipulated amount of time ??

If a service consumer talks to a service and then service consumer usually be notified with error or a response. If system fail to respond within the average time taken previously for same request , consumer has to wait until the request get timedout.




