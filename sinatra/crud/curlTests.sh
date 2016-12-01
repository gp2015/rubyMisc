#!/bin/bash
# CRUD testing

id=1
url="http://localhost:4567/bookmarks/"
nullCheck="curl -X GET $url$id"

response=$(eval $nullCheck)

if [ $response != null ]; then
  let id+=1
  response=$(eval $nullCheck)
  echo $response
done

# curl -X POST $url$id

curl -X GET $url$id

# curl -X UPDATE $url$id

# curl -X DELETE $url$id
