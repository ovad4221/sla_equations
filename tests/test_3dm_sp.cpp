#include "../src/headers_of_meth/3dm_sp.hpp"
#include "gen_rand.hpp"            
#include <iostream>


int main() {
    std::random_device rd;
    std::mt19937_64 engine(rd());

    std::uniform_real_distribution<double> uniform(-10, 10);

    ThrSLE sle_custom = rand_thr_sle(10, uniform, engine);
    vector_d sol = rand_vector(10, uniform, engine);

    vector_d d = get_d_from_x(sle_custom, sol);
    // vector_d d = {0.1, 0.6, 5.7, 5, 11.1, 6.6, 15.3, 12.6, 21.5, 12.4};

    for (unsigned int i = 0; i < sol.size(); ++i) {
        std::cout << sol[i] << ' ';
    }
    std::cout << '\n';
    // solve_thr_sle(sle_custom, d);
    for (auto i : solve_thr_sle(sle_custom, d)) {
        std::cout << i << ' ';
    }
    std::cout << std::endl << "3_dm_sp_test: ok\n\n";

    return 0;
}
