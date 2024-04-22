#include "../headers_of_meth/chebyshev.hpp"
#include <cmath>

// tested
std::vector<unsigned> search_transposition(unsigned n) {
    std::vector<unsigned> transp(n, n);
    unsigned r_0 = static_cast<unsigned>(std::log2(n));
    transp[0] = 0;
    transp[static_cast<int>(n / 2)] = 1;
    for (unsigned r = 1; r < r_0; ++r) {
        unsigned tau = std::pow(2, r_0 - r);
        for (unsigned j = 0; j < n; j += tau) {
            if (transp[j] == n) {
                transp[j] = std::pow(2, r) - 1 - transp[j - tau];
            }
        }
    }
    for (unsigned i = 1; i < n; i += 2) {
        transp[i] = n - 1 - transp[i - 2];
    }

    return transp;
}

// in optimal transposition
const vector_d cheb::find_cheb_roots(unsigned n, double l_min, double l_max) {
    vector_d res(n);
    std::vector<unsigned> transposition = search_transposition(n);

    for (unsigned i = 0; i < n; ++i) {
        res[i] = (l_max + l_min) / 2 + (l_max - l_min) / 2 * std::cos(M_PI * (2 * transposition[i] + 1) / 2 / n);
    }

    return static_cast<const vector_d>(res);
}
