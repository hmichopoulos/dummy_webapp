## Dummy webapp
A simple webapp that uses a dummy postgres database. The database link is called postgres and uses the default port 5432.

## Quick start
Start the postgres dummy database.
> docker run -p 5432:5432 --name dummy_db -e POSTGRES_PASSWORD=postgres -d hmichopoulos/dummy-db

Then start the webapp
> docker run -p 8080:8080 --link dummy_db:postgres -d hmichopoulos/dummy-webapp

Access the application at [http://localhost:8080/](http://localhost:8080/)

## Details
It exposes the port `8080`. 

Calling the REST POST service [http://localhost:8080/generate](http://localhost:8080/generate) will generate a 
salutation which will be stored in the database.
In the home page, you can see the total number of salutations.

The webapp can be configured to salut you in Greek, French or English by calling the REST POST service
[http://localhost:8080/api/config](http://localhost:8080/api/config) passing a JSON object 
> { "language": "FR" }
