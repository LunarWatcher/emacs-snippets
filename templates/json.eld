json-mode

(violet "{
    \"name\": \"" (p "Name") "\",
    \"description\": \"" (p "Description") "\",
    \"prefix\": \"" (p "Prefix relative to the domain (i.e. /violet)") "\",
    \"theme\": \"_default\",
    \"data\": {
        \"language\": \"en-GB\",
        \"repo\": {
            \"name\": \"" (p "Repo fragment (i.e. LunarWatcher/violet)") "\",
            \"url\": \"" (p "repo URL") "\",
            \"license\": \"" (p "License details") "\"
        }
    },
    \"exclude\": [
        \"LICENSE\"
    ]
}
")
