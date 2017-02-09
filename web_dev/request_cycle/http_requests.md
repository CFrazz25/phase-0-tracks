1. What are some common HTTP status codes?

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

link to descriptions here: https://www.smartlabsoftware.com/ref/http-status-codes.htm



2. What is the difference between a GET request and a POST request? When might each be used?

GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

GET is for retrieving data.  It should have no side effects, you should be able to request the same URL over and over harmlessly.  

POST is for writing data.  It may have side effects.  Making multiple identical write requests will likely result in multiple writes.  Browsers typically give you warnings about this.  POST is *not* secure.  The data is in the body of the request instead of the URL but it is trivially simple to view/edit.

Here are a couple links going into much more detail about the two: http://www.w3schools.com/Tags/ref_httpmethods.asp

https://www.quora.com/HTTP-What-is-the-difference-between-GET-and-POST




3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.

Cookies are mainly used for these three purposes:

Session management (user logins, shopping carts)
Personalization (user preferences)
Tracking (analyzing user behavior)
Cookies have also been used for general client-side storage. While this use could have been considered legitimate at a time when there was no other way to store data on the client side, it is no longer the case nowadays where web browsers are capable of using various storage APIs.

Link for more info.: https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies 