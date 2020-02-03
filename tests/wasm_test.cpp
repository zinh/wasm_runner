#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE TestWasm

#include <boost/test/parameterized_test.hpp>
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_CASE(test_long_number) {
  BOOST_TEST(1 == 1);
}
