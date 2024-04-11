#include <iostream>
#include <vector>
#include "../src/headers_of_meth/vector.hpp"

using std::vector;
using std::istream;
using std::ostream;
using std::cout;
using std::endl;

int main() {
    Vector a({1, 2, 3, 4, 5, 6, 7, 8}), b = {1, 2, 3}, c(6);
    
    cout << a << b << c;
    cout << "Module a = " << a.module_v() << endl;
    c.set_value(1, 13);
    cout << c.get_value(1);
    cout << (a == b) << (a != b) << endl;
    cout << a - b << endl;
    cout << a.slice(3, 6);
    cout << a[1];

    Vector d(4, 7);
    cout << d[3];

    cout << "all ok)" << endl;

    return 0;
}
