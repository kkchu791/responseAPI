##Response API

### To install:
```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
rails s -p 3001
```

### To make requests:
First create an ApiKey by going into rails console and type:

`ApiKey.create!`

This should generate an ApiKey that will give you access to creating new eightball messages.
To check if it all works, you can:

#### 1) open Postman and type in this route

`localhost:3001/responses`

(Note: Make sure your localhost server is running on port 3001)

Next, Add a header to the route

```
key: Authorization
Token token="your Api_Key goes here"
```

Press send and you should get a JSON list of eightball messages that we seeded in the seed file.

#### 2) Use curl with 

`curl -H "Authorization: Token token= <Your API_Key goes here>" http://localhost:3001/responses`

Add a new eightball message in the rails console

`Response.create(reply: "It Is Decidely So!")`

### To consume API:

Check your response on the frontend by running this React app!

```
git clone https://github.com/kkchu791/eightball.git
webpack-dev-server
```
