c++-mode

(ifwin
 "#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__NT__)" n>
 p n>
 "#endif" n>
)

(catch2-main "#include <catch2/catch_session.hpp>

int main(int argc, const char* argv[]) {
    auto sess = Catch::Session();
    return sess.run(argc, argv);
}")

