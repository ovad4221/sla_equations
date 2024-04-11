#include <fstream>
#include <cmath>
#include <chrono>
#include <random>
#include "../src/headers_of_meth/simple_iter_methods.hpp"



int main() {
    vector_d vect(1000, 2.0);
    std::ofstream out;

    std::random_device rd;
    std::mt19937_64 engine(rd());

    std::uniform_real_distribution<double> uniform(0, 999);

    out.open("ravn.csv");
    out.precision(100);
    out << "\n";

    
    return 0;
}
