c++-mode

(ifwin
 "#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__NT__)" n>
 p n>
 "#endif" n>
)
