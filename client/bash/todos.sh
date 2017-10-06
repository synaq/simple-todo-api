#!/usr/bin/env bash

case $1 in
    list)
        curl -s http://localhost:4444/todos | jq .
        ;;
    view)
        curl -s http://localhost:4444/todos/$2 | jq .
        ;;
    add)
        TITLE=$2
        DESCRIPTION=$3
        curl -s -X POST -H "Content-Type: application/json" -d "{\"title\": \"${TITLE}\", \"description\": \"${DESCRIPTION}\"}" http://localhost:4444/todos | jq .
        ;;
    complete)
        curl -s -X PUT -H "Content-Type: application/json" -d "{\"isComplete\":true}" http://localhost:4444/todos/$2 | jq .
        ;;
    delete)
        CURL -s -X DELETE http://localhost:4444/todos/$2
        ;;
    *)
        echo 'Usage: todos.sh list | view [id] | add [title] [description] | complete [id] | delete [id]'
        ;;
esac