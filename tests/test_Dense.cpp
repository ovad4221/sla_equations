#include "../src/headers_of_meth/DenseMatrix.hpp"


int main() {
    vector_d m = {1, 2, 3, 4, 5, 6, 1, 1, 1};
    vector_d m1 = {1, 2, 3, 4, 5, 6};
    DenseMatrix A(m, 3);
    std::cout << A;
    A.sq_transpose();   
    std::cout << "transposed A: \n" << A;
    DenseMatrix A1(m1, 3);
    std::cout << A1;
    A1.transpose();
    std::cout << "transposed A1: \n" << A1;
    DenseMatrix B{4, 2, 1};
    std::cout << B;
    DenseMatrix C{4, 3};
    std::cout << C;

    vector_d v1 = {1, 2};
    Vector v2(v1);

    std::cout << A1 * v1 << typeid(A1 * v1).name() << '\n' << A1 * v2 << typeid(A1 * v2).name() << std::endl;


    // std::span<double> span_a = A.get_span(0, 1);


}
