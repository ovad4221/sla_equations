#include "../headers_of_meth/3dm_sp_h.hpp"
#include "../test_headers/gen_h.hpp"
#include <iostream>


int main() {

    Thr_SLE sle_custom = rand_thr_sle();
    vector_d sol = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    vector_d d = get_d_from_x(sle_custom, sol);
    // vector_d d = {0.1, 0.6, 5.7, 5, 11.1, 6.6, 15.3, 12.6, 21.5, 12.4};

    // for (unsigned int i = 0; i < 10; ++i) {
    //     std::cout << d[i] << ' ';
    // }
    
    // solve_thr_sle(sle_custom, d);

    for (auto i : solve_thr_sle(sle_custom, d)) {
        std::cout << i << ' ';
    }
    std::cout << std::endl;

    return 0;
}
