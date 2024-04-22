#include "headers_of_meth/simple_iter_methods.hpp"
#include "headers_of_meth/chebyshev.hpp"


[[nodiscard]] Vector iter_methods::jacobi_iter(const CSR& csr, Vector& x_0, const Vector& b, 
        double required_accuracy=1.0, unsigned frequency_checking=5u, unsigned iteration_limit=100) {
    for (unsigned k = 0u; k < iteration_limit; k += frequency_checking) {
        if ((csr * x_0 - b).module_v() < required_accuracy) return x_0;
        // оберточный цикл
        for (size_t h = 0u; h < frequency_checking; ++h) {
            
            Vector x = b;
            double d = -1;
            // сам метод Якоби
            for (size_t i = 0; i < x.get_size(); ++i) {
                for (size_t j = csr.get_rows()[i]; j < csr.get_rows()[i + 1]; ++j) {
                    if (csr.get_cols()[j] != i) {
                        x[i] -= csr.get_values()[i] * x_0[csr.get_rows()[i]];
                    } else {
                        d = csr.get_values()[j];
                    }
                }
                x[i] /= d;
            }
            x_0 = x;

        }
    }

    return x_0;
}

[[nodiscard]] Vector iter_methods::gauss_zeidel(const CSR& csr, Vector& x_0, const Vector& b, 
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit) {

    double d = -1;
    for (unsigned k = 0u; k < iteration_limit; k += frequency_checking) {
        if ((csr * x_0 - b).module_v() < required_accuracy) return x_0;
        // оберточный цикл
        for (size_t h = 0u; h < frequency_checking; ++h) {

            // сам метод Гаусса-Зейделя
            for (size_t i = 0; i < x_0.get_size(); ++i) {
                x_0[i] = b.get_value(i);
                for (size_t j = csr.get_rows()[i]; j < csr.get_rows()[i + 1]; ++j) {
                    if (csr.get_cols()[j] != i) {
                        x_0[i] -= csr.get_values()[i] * x_0[csr.get_rows()[i]];
                    } else {
                        d = csr.get_values()[j];
                    }
                }
                x_0[i] /= d;
            }

        }
    }

    return x_0;
}

[[nodiscard]] Vector iter_methods::simple_iter(const CSR& csr, const Vector& x_0, const Vector& b, double tau,
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit) {
    Vector res = x_0;
    for (size_t i = 0u; i < iteration_limit; i += frequency_checking) {
        if ((csr * res - b).module_v() < required_accuracy) return res;

        for (unsigned j = 0u; j < frequency_checking; ++j) {
            res = res - tau * (csr * res - b);
        }
    }
    // return -1;
    return res;
}

[[nodiscard]] Vector iter_methods::chebishev_accel(const CSR& csr, const Vector& x_0, const Vector& b, double l_min, double l_max,
        unsigned n_cheb_roots, double required_accuracy, size_t iteration_limit_by_n) {
    Vector res = x_0;
    const vector_d roots = cheb::find_cheb_roots(n_cheb_roots, l_min, l_max);

    for (size_t i = 0; i < iteration_limit_by_n; ++i) { 
        if ((csr * res - b).module_v() < required_accuracy) return res;

        for (unsigned j = 0; j < n_cheb_roots; ++j) {
            // шаг мпи, tau = 1 / xi in optimal transposition
            res = res - (csr * res - b) / roots[j];
        }
    }

    return res;
}

