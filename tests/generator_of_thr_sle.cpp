#include "gen_h.hpp"
#include <algorithm>
#include <random>
#include <iostream>


Thr_SLE rand_thr_sle() {
    std::default_random_engine re;

    double lower_bound = -10;
    double upper_bound = 10;
    std::uniform_real_distribution<double> unif(lower_bound,upper_bound);

    auto gen = [&unif, &re](){
                   return unif(re);
               };

    // vector<double> a = {0.1, 0.2, 1.1, 0.4, 1.1, 0.2, 1.1, 0.4, 1.1};
    // vector<double> b = {0.1, 0.2, 1.1, 0.4, 1.1, 0.2, 1.1, 0.4, 1.1, 0.4};
    // vector<double> c = {0.1, 0.2, 1.1, 0.4, 1.1, 0.2, 1.1, 0.4, 1.1};

    vector<double> a(9);
    vector<double> b(10);    
    vector<double> c(9);

    generate(begin(a), end(a), gen);
    generate(begin(b), end(b), gen);
    generate(begin(c), end(c), gen);

    // // Optional
    // for (auto i : a) {
    //     std::cout << i << " ";
    // }
    // std::cout << std::endl;

    // for (auto i : b) {
    //     std::cout << i << " ";
    // }
    // std::cout << std::endl;
    
    // for (auto i : c) {
    //     std::cout << i << " ";
    // }
    // std::cout << std::endl;

    Thr_SLE rand_sle(a, b, c);

    return rand_sle;
}

vector_d get_d_from_x(Thr_SLE &sle, vector_d &sol) {
    unsigned int s = sle.get_size();
    vector_d d(s);

    d[0] = sle.get_from_b(0) * sol[0] + sle.get_from_c(0) * sol[1];

    for (unsigned int i = 1; i < s - 1; ++i) {
        d[i] = sle.get_from_a(i - 1) * sol[i - 1] + sle.get_from_b(i) * sol[i] + sle.get_from_c(i) * sol[i + 1];
    }

    d[s - 1] = sle.get_from_a(s - 2) * sol[s - 2] + sle.get_from_b(s - 1) * sol[s - 1];

    // for (auto i : d) {
    //     std::cout << i << "  ";
    // }
    // std::cout << std::endl;

    return d;
}

// int main() {
//     Thr_SLE sle_custom = rand_thr_sle();
//     vector_d sol = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

//     get_d_from_x(sle_custom, sol);

//     return 0;
// }
