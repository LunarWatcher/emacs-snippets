markdown-mode

(yfm "---" n>
     n>
     "---"
)
(jfm "---" n>
     "{" n>
     r> n>
     "}" n>
     "---"
)

;; Specific-purpose frontmatters for my blog
(blog-fm "---" n
     "{" n
     "    \"title\": \"" (p "Title") "\"," n
     "    \"date\": \"" (format-time-string "%Y-%m-%dT%H:%M:%S%:z") "\"," n
     "    \"type\": \"blog\"," n
     "    \"taxonomies\": {" n
     "        \"tags\": [" (p "tags") "]" n
     "    }" n
     "}" n
     "---"
)
(til-fm "---" n
     "{" n
     "    \"title\": \"" (p "Title") "\"," n
     "    \"date\": \"" (format-time-string "%Y-%m-%dT%H:%M:%S%:z") "\"," n
     "    \"type\": \"til\"," n
     "    \"taxonomies\": {" n
     "        \"tags\": [" (p "tags") "]" n
     "    }" n
     "}" n
     "---"
)
(note-fm "---" n
     "{" n
     "    \"title\": \"" (p "Title") "\"," n
     "    \"date\": \"" (format-time-string "%Y-%m-%dT%H:%M:%S%:z") "\"," n
     "    \"type\": \"notes\"," n
     "    \"taxonomies\": {" n
     "        \"tags\": [" (p "tags") "]" n
     "    }" n
     "}" n
     "---"
)
