NEW_BOOK = "{\"read\":false,\"genre\":\"Escavadeira\",\"title\":\"Bernardo\",\"author\":\"Avestruz\"}"
HEADERS = {"Content-Type" : "application/json"}
UPDATE_BOOK = "{\"read\":true,\"genre\":\"UPDATE\",\"title\":\"UPDATE\",\"author\":\"UPDATE\"}"
URL=r"http://namstest.got.volvo.net:4000/api"
ENDPOINT =r"books"
RESPONSE_CODE ="200"
JSON_PATH ="[\"_id\"]"
COMPARE_PATH ="[\"genre\"]"
