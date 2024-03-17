#include <fstream>
#include <iostream>
#include "../src/headers_of_meth/simple_iter_methods.hpp"

int main() {
    vector_d a{{86, 0, 0, 0, 0, 74, 0, 0, 0, 0, 76, 8, 1, 4, 0, 55}};
    CSR A{a, 4};
    Vector d{{1, 1, 1, 1}};
    Vector x_0{4, 0};
    std::ofstream out;
    out.open("ravn.csv");
    out << "i,tau\n";

    for (double tau = 0.001; tau < 0.1; tau += 0.001) {
        // im returm double here
        out << iter_methods::simple_iter(A, x_0, d, tau, 10e-12, 5, 10000) << ',' << tau << std::endl;
    }

    out.close()
}
