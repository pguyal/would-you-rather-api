# ID=<question id> TOKEN=<user token> sh curl-scripts/questions/show.sh

API="https://sheltered-beach-59716.herokuapp.com"
URL_PATH="/questions"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
