# simple-todo-api
A simple api with basic CRUD operations for ToDo applications.

https://todo-simple-api.herokuapp.com/

## Quick start
For a quick, ready made development and testing environment, you can build
a Docker image from the included Dockerfile and run a minimal service implementation
in a Docker container.

#### Build image
```
docker build -t simple-todo-api .
```

#### Run a minimal service in a local container, bound to port 4444
```
docker run --rm --name simple-todo -p 4444:4444 -d simple-todo-api
```

#### Access the minimal service with this URL:
```
http://localhost:4444/todos
```

## API Reference

#### Method: GET
###### Path /todos - Fetch all todos
 ```javascript
    response = {
        "data": [
            {
                "id": 1,
                "title": "Make a simple API",
                "description": "An api with node and express",
                "isComplete": false
                "createdAt": "2016-08-26T05:21:24.000Z",
                "updatedAt": "2016-08-26T05:21:24.000Z"
            },
            {
                "id": 2,
                "title": "Make a CRUD application with React",
                "description": "CRUD app using the simple todo api as the back end",
                "isComplete": false
                "createdAt": "2016-08-26T05:21:24.000Z",
                "updatedAt": "2016-08-26T05:21:24.000Z"
            }
        ]
    }
 ```
 ###### Status Codes
 * 200 - Todos successfully returned
 
###### Path /todos/:todoId - Fetch todo by id
 
 ```javascript
    response = {
        "data": {
            "id": 1,
            "title": "Make a simple API",
            "description": "An api with node and express",
            "createdAt": "2016-08-26T05:21:24.000Z",
            "updatedAt": "2016-08-26T05:21:24.000Z"
        }
    }
 ```
  ###### Status Codes
 * 200 - Todo successfully returned
 * 404 - Todo with the supplied ID does not exist

#### Method: POST

###### Path :/todos - Create new ToDo
 ``` javascript
    request = {
        "title": "Some todo",
        "description": "description"
    }
 
    response = {
        "data": {
            "title": "Some todo",
            "description": "description",
            "createdAt": "2016-08-26T12:01:12+05:45",
            "id": 6
        }
    }
```
  ###### Status Codes
 * 201 - Todo successfully created

#### METHOD: PUT

###### Path: /todos/:todoId - Update ToDo
```javascript
    request = {
        "title": "Another todo",
        "description": "Another description",
        "isComplete": true
    }
```
  ###### Status Codes
 * 200 - Todo successfully updated
 * 404 - Todo with the supplied ID does not exist

#### Method: DELETE

###### Path: /todos/:todoId - Delete Todo
```javascript
    response = {
        "success": true
    }
```     
  ###### Status Codes
 * 204 - Todo successfully deleted
 * 404 - Todo with the supplied ID does not exist     
 
 
