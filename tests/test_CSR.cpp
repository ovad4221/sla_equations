#include "../src/headers_of_meth/CSR.hpp"


int main() {
    vector_d m = {1, 2, 0, 0, 4, 0, 0, 2, 6};
    CSR A(m, 3);
    std::cout << A;

    vector_d m1 = {1, 0, 2, 0, 1, 0};
    CSR A1(m1, 3);
    std::cout << A1;


    DenseMatrix B{4, 2};
    std::cout << B;
    CSR C(B);
    std::cout << C;

    vector_d v1 = {1, 2, 3};
    Vector v2(v1);

    std::cout << A1 * v1 << typeid(A1 * v1).name() << '\n' << A1 * v2 << typeid(A1 * v2).name() << std::endl;


    // std::span<double> span_a = A.get_span(0, 1);


}
