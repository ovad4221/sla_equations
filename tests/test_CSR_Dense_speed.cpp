#include <fstream>
#include <cmath>
#include <chrono>
#include <random>
#include <../src/headers_of_meth/CSR.hpp>
#include <../src/headers_of_meth/3dm_sp.hpp>



int main() {
    vector_d vect(1000, 2.0);
    std::ofstream out;

    std::random_device rd;
    std::mt19937_64 engine(rd());

    std::uniform_real_distribution<double> uniform(0, 999);

    out.open("ravn.csv");
    out.precision(100);
    out << "pc0,CSR_time,Dense_time\n";

    for (unsigned i = 0; i < 1000; ++i) {
        // eq at
        vector_d mat_init(10e6);
        out << i << ',';
        for (unsigned j = 0; j <= 10e6; ++j) {
            if (uniform(engine) > i) {
                mat_init[j] = 0;
            }
            else mat_init[j] = 2.0;
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
        auto start1 = std::chrono::high_resolution_clock::now();
        dense * vect;
        auto end1 = std::chrono::high_resolution_clock::now();
        auto nsec1 = end1 - start1;
        out << nsec1.count() << '\n';
    }

    return 0;
}
