# README

* Proof Of Concept: backend api using JSON:API with cerebris' JSONAPI::Resources

Running the rails server on port 3000 after running the database migrations will let you use curl to query the application. 

* Curl Examples

Create a User
 `curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"users", "attributes":{"first-name":"Roberto", "last-name":"Plancarte", "email":"robertoplancarte@apptegy.com"}}}' http://localhost:3000/users`

Give the first user a home phone number
`curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{ "data": { "type": "phone-numbers", "relationships": { "user": { "data": { "type": "users", "id": "1" } } }, "attributes": { "name": "home", "phone-number": "(603) 555-1212" } } }' http://localhost:3000/phone-numbers`

Get the users index
`curl -i -H "Accept: application/vnd.api+json" "http://localhost:3000/users"`

Get the users index with sideloaded phone numbers
`curl -i -H "Accept: application/vnd.api+json" "http://localhost:3000/users?include=phone-numbers"`
