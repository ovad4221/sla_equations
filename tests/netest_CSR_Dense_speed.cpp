#include <fstream>
#include <cmath>
#include <chrono>
#include <../src/headers_of_meth/CSR.hpp>
#include <../src/headers_of_meth/3dm_sp.hpp>



int main() {
    vector_d vect(1000, 2.0);
    std::ofstream out;
    out.open("ravn.csv");
    out.precision(1000);
    out << "\%0,CSR_time,Dense_time\n";

    for (unsigned i = 0; i < 1000; ++i) {
        // eq at
        vector_d mat_init(10e6);
        out << i / 1000 << ',';
        for (unsigned j = 0; j <= 10e6; ++j) {
            if ((rand() % (1000 - 0 + 1) + 0) < i) {
                mat_init[j] = 0;
            }
            else mat_init[i] = 2.0;
        }
        DenseMatrix dense(mat_init, 1000);
        CSR csr(dense);
        // csr
        auto start = std::chrono::high_resolution_clock::now();
        csr * vect;
        auto end = std::chrono::high_resolution_clock::now();
        auto nsec = end - start;
        out << nsec.count() << ',';
        // dense
        auto start = std::chrono::high_resolution_clock::now();
        csr * vect;
        auto end = std::chrono::high_resolution_clock::now();
        auto nsec = end - start;
        out << nsec.count() << '\n';
    }

    return 0;
}
