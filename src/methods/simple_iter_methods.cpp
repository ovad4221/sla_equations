#include "headers_of_meth/simple_iter_methods.hpp"


Vector iter_methods::jacobi_iter(const CSR& csr, const Vector& x_0, const Vector& b, 
        double required_accuracy=1.0, unsigned frequency_checking=5u, unsigned iteration_limit=100) {
    Vector res = x_0;
    for (unsigned i = 0u; i < iteration_limit; i += frequency_checking) {
        if ((csr * res - b).module_v() < required_accuracy) return res;

        for (unsigned j = 0u; j < frequency_checking; ++j) {
            res = csr.mult_only_obr_d(b - csr.mult_wishout_d(res));
        }
    }
    return res;
}

// Vector iter_methods::gauss_zeidel(const CSR& csr, const Vector& x_0, const Vector& b, 
//         double required_accuracy, unsigned frequency_checking, unsigned iteration_limit) {
//     Vector res = x_0;
//     for (size_t i = 0u; i < iteration_limit; i += frequency_checking) {
//         if ((csr * res - b).module_v() < required_accuracy) return res;

//         for (unsigned j = 0u; j < frequency_checking; ++j) {
            
//             for (size_t k = 0; k < res.getSize(); ++k) {
//                 // сумма по элементам U * x i
//                 double sum_i = 0;
//                 for (long int h = res.getSize() - 1; h > k; --h) {
//                     // на h-ый элемент k-ой строки матрицы U, те матрицы csr
//                     sum_i += res[h] * ;
//                 }
//                 // сумма по элементам L * x (i + 1)
//                 double sum_i_new = 0;
//                 for () {
                    
//                 }
//                 // value
//                 res.setValue(k, static_cast<double>((sum_i + sum_i_new + b.getValue(k)) / d[k]));

//             }

//         }
//     }
//     return res;
// }

Vector iter_methods::simple_iter(const CSR& csr, const Vector& x_0, const Vector& b, double tau,
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


