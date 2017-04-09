What are some common HTTP status codes?

404 - The requested resource was not found.

403 - The requested resource is forbidden. Client is not on the whitelist or doesn't have a valid cert. Not related to authorization.

500 - Catchall server error

503 - Web server unavailable

504 - Gateway timeout



What is the difference between a GET request and a POST request? When might each be used?

POST requests supply additional data from the client to the server in the message body while GET requests supply all required data within the URL.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small pieces of data that are sent from a web server and stored on the users web browser. Cookies are set within http requests.

