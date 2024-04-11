#include "CSR.hpp"


namespace iter_methods {

[[nodiscard]] Vector jacobi_iter(const CSR& csr, const Vector& x_0, const Vector& b, 
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

[[nodiscard]]  Vector gauss_zeidel(const CSR& csr, const Vector& x_0, const Vector& b, 
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);


[[nodiscard]] Vector simple_iter(const CSR& csr, const Vector& x_0, const Vector& b, double tau,
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

}