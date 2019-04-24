## Simple web-service for users handling
Implemented via auth0-jwt library.
#### How to run
1.     mvn clean package
2.     docker-compose up

####Examples of use

Sign up:
```
curl -H "Content-Type: application/json" -X POST -d '{
    "username": "admin",
    "password": "password"
}' http://localhost:8080/users/sign-up
```
Get JWT token:
```
curl -i -H "Content-Type: application/json" -X POST -d '{
     "username": "admin",
     "password": "password"
}' http://localhost:8080/login
```

Response:
```
HTTP/1.1 200 
Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTU1Njk2ODI1M30.r8tffQcev10QBcYFrUZuLszKVBNqVOKKNejRq0_TgLUX4d3x_nXyxsjBqBaZtJ8p0Bk-BL2sPdPl5yAroW3bdA
X-Content-Type-Options: nosniff
X-XSS-Protection: 1; mode=block
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Expires: 0
X-Frame-Options: DENY
Content-Length: 0
Date: Wed, 24 Apr 2019 11:10:53 GMT
```

Further you use JWT token to retrieve list of users; add them & delete them.

* Retrieve list:
```
curl -H "Content-Type: application/json" -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTU1Njk2ODI1M30.r8tffQcev10QBcYFrUZuLszKVBNqVOKKNejRq0_TgLUX4d3x_nXyxsjBqBaZtJ8p0Bk-BL2sPdPl5yAroW3bdA" -X GET  http://localhost:8080/users
```

* Delete:
```
curl -H "Content-Type: application/json" -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTU1Njk2ODI1M30.r8tffQcev10QBcYFrUZuLszKVBNqVOKKNejRq0_TgLUX4d3x_nXyxsjBqBaZtJ8p0Bk-BL2sPdPl5yAroW3bdA" -X DELETE  http://localhost:8080/users/1001
```
* Add: 
```
curl -H "Content-Type: application/json" -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTU1Njk2ODI1M30.r8tffQcev10QBcYFrUZuLszKVBNqVOKKNejRq0_TgLUX4d3x_nXyxsjBqBaZtJ8p0Bk-BL2sPdPl5yAroW3bdA" -X POST
 -d '{
      "username": "admin",
      "password": "password"
 }' http://localhost:8080/users/
```

