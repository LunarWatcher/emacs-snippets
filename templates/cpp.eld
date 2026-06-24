c++-mode

(catch2-main "#include <catch2/catch_session.hpp>

int main(int argc, const char* argv[]) {
    auto sess = Catch::Session();
    return sess.run(argc, argv);
}")

(catch2-test "#include <catch2/catch_test_macros.hpp>

TEST_CASE(\"" (p "Test case name") "\") {" n>
    p n
"}" n>)

