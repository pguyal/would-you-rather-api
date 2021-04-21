# ID=<question id> TOKEN=<user token> sh curl-scripts/questions/destroy.sh

API="http://localhost:4741"
URL_PATH="/questions"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
