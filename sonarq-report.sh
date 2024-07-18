# Project token - FAILS
curl -v --request GET \
  --url 'https://sonarqube-app.happycoast-219ccfac.australiaeast.azurecontainerapps.io/api/qualitygates/project_status?p=1&projectKey=devsecops-app&branch=main' \
  --header 'Authorization: Bearer sqp_2117d003c9230f725e4f1e7de8157aeaf0ccc846' \
  -o sonarq.json

curl -v --request GET \
  --url 'https://sonarqube-app.happycoast-219ccfac.australiaeast.azurecontainerapps.io/api/qualitygates/project_status?p=1&projectKey=devsecops-app&branch=main' \
  --header 'Authorization: Basic sqp_2117d003c9230f725e4f1e7de8157aeaf0ccc846:' \
  -o sonarq.json



# User Token - FAILS
curl -v --request GET \
  --url 'https://sonarqube-app.happycoast-219ccfac.australiaeast.azurecontainerapps.io/api/qualitygates/project_status?p=1&projectKey=devsecops-app&branch=main' \
  --header 'Authorization: Bearer squ_b283c29b46ef08424f927a45d3f596a7a9294f84' \
  -o sonarq.json


# Sonarqube 9.x works
curl -v --request GET \
  --url 'https://sonarqube-app.happycoast-219ccfac.australiaeast.azurecontainerapps.io/api/qualitygates/project_status?p=1&projectKey=devsecops-app&branch=main' \
  -u 'squ_b283c29b46ef08424f927a45d3f596a7a9294f84:'



curl -v --request GET \
  --url 'https://sonarqube-app.happycoast-219ccfac.australiaeast.azurecontainerapps.io/api/qualitygates/project_status?p=1&projectKey=devsecops-app&branch=main' \
  --header 'Authorization: Basic squ_b283c29b46ef08424f927a45d3f596a7a9294f84:' \
  -o sonarq.json


# Cookie - WORKS
curl -v --request GET \
  --url 'https://sonarqube-app.happycoast-219ccfac.australiaeast.azurecontainerapps.io/api/qualitygates/project_status?p=1&projectKey=devsecops-app&branch=main' \
  --cookie 'JWT-SESSION=eyJhbGciOiJIUzI1NiJ9.eyJsYXN0UmVmcmVzaFRpbWUiOjE3MTgzMTg2OTI3ODcsInhzcmZUb2tlbiI6ImY1NzRpNTVyZWdlMTA1M2V1MHVza244Y3VvIiwianRpIjoiQVpBVHY4am1fTTNXNF9OSmI0a3AiLCJzdWIiOiJBWkFKbklEcF9NM1c0X05KYjRqeSIsImlhdCI6MTcxODMxODI1NCwiZXhwIjoxNzE4NTc3ODkyfQ.TLS8pdvR5AFZZCVlX2fmEo6Zry8HNXum-bAzB5NRgfA;' \
  -o sonarq.json
