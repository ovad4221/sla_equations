#include "../src/headers_of_meth/householder.hpp"
#include "gen_rand.hpp"            
#include <iostream>


int main() {
    vector_d mat = {5, 2, 3, 2, 5, 4, 3, 4, 6};
    DenseMatrix M(mat, 3);
    std::cout << M;
    // HouseholderQr QR(M);



    return 0;
}
