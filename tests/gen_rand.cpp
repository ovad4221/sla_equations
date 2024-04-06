#include "gen_rand.hpp"


void rand_vector(vector_d& vect, size_t len, std::uniform_real_distribution<double>& uniform, 
        std::mt19937_64& engine) {
    for (size_t i = 0; i < len; ++i) {
        vect[i] = uniform(engine);
    }
}

vector_d rand_vector(size_t len, std::uniform_real_distribution<double>& uniform, std::mt19937_64& engine) {
    vector_d a(len);

    for (size_t i = 0; i < len; ++i) {
        a[i] = uniform(engine);
    }

    return a;
}

ThrSLE rand_thr_sle(size_t h, std::uniform_real_distribution<double>& uniform, std::mt19937_64& engine) {
    vector_d a(h - 1), b(h - 1), c(h);
    rand_vector(a, h - 1, uniform, engine);
    rand_vector(b, h - 1, uniform, engine);
    rand_vector(c, h, uniform, engine);
    
    ThrSLE rr(a, b, c);
    return rr;
}

vector_d get_d_from_x(ThrSLE &sle, vector_d &sol) {
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
