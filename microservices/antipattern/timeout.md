## Timeout Anti Pattern

In a microservices environment, services usually are distributed across the platform or any be across the region. The only way service can interact with one another using a standard set of communication protocol. Challenges faced in any distributed environment is availability and responsiveness. Even though both are service communication in the nutshell, but they are very different things

![Timeout: Availablilty and Responsiveness](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/availability-reponsiveness.png)

Availability: Does the system stays online all the time, so that any consumer can connect and send a request !!
Responsiveness: Does the system capable of responding to all the requests within the stipulated amount of time ??

If a service consumer talks to a service and then service consumers usually be notified with an error or a response. If the system fails to respond within the average time taken previously for the same request, the consumer has to wait until the request gets timed-out.


## Rushing to solve the problem :

Initially, the problem of being starving can be addressed by the setting request timeout value by the service consumer. This value can be set using doubling technique ( Twice the average amount of time taken for the same request made previously ) If the service seems to be available, but then failed to respond to consumer request; the consumer can either respond to the user with an error scenario or find make another retry.


## Circuit Breaker 

IInstead of adding a request timeout value, add circuit breaker can be introduced into the system which monitors the service availability and responsiveness. If service is available and responsive the circuit will remain closed so that all the request made by the consumer is passed to the service to respond. Unlikely If service is unavailable or not responsive the circuit opens and the consumer is responded with an error right away.

The simple way to monitor a remote service is to a heartbeat check which relatively simple and inexpensive. But heartbeat tells about the availability of the remote service but hardly about the responsiveness of the actual request. To monitor the responsiveness of the actual request, synthetic requests (fake transactions) can be made to the service to arrive at the accurate measure of the responsiveness.

A synthetic transaction can tricky and time-consuming as all parts of the service need to know about the transaction is synthetic.


![Timeout: Availablilty and Responsiveness](https://github.com/VivekanandanS/gist/blob/master/resources/images/microservices/circuit-breaker.png)


Another way to monitor a remote service is to monitor the live transactions for responsiveness. Once the threshold is reached, the circuit moves to a half-open state. When responsiveness goes below the threshold circuit is closed. The circuit is closed when threshold becomes normal.








