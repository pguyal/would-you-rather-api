# TOKEN=<user token> sh curl-scripts/questions/index.sh

API="https://sheltered-beach-59716.herokuapp.com"
URL_PATH="/questions"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \

echo
