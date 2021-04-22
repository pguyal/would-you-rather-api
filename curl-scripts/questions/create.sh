# TOKEN= TEXT="Would you rather be a dog or a cat" OPTIONONE="Dog" OPTIONTWO="Cat" sh curl-scripts/questions/create.sh

API="https://sheltered-beach-59716.herokuapp.com"
URL_PATH="/questions"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
