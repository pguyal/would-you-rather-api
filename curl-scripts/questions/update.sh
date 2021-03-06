# ID=<question id> TOKEN=<user token> TEXT="Would you rather be rich or famous" OPTIONONE=Rich OPTIONTWO=Famous sh curl-scripts/questions/update.sh

API="http://localhost:4741"
URL_PATH="/questions"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "question": {
      "text": "'"${TEXT}"'",
      "option_one": "'"${OPTIONONE}"'",
      "option_two": "'"${OPTIONTWO}"'"
    }
  }'

echo
