#include "CSR.hpp"


namespace iter_methods {

[[nodiscard]] Vector jacobi_iter(const CSR& csr, Vector& x_0, const Vector& b, 
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

[[nodiscard]] Vector gauss_zeidel(const CSR& csr, Vector& x_0, const Vector& b, 
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

[[nodiscard]] Vector simple_iter(const CSR& csr, const Vector& x_0, const Vector& b, double tau,
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

// чебышёвское ускорение мпи
// старый iteration_limit есть новый * n_cheb_roots, потому что в одной итерации будем делать n_cheb_roots 
// обычных итераций. n_cheb_roots кратно двойке для корректной работы.
[[nodiscard]] Vector chebishev_accel(const CSR& csr, const Vector& x_0, const Vector& b, double l_min, double l_max,
        unsigned n_cheb_roots, double required_accuracy, size_t iteration_limit_by_n);

[[nodiscard]] Vector symmetric_gauss_zeidel(const CSR& csr, Vector& x_0, const Vector& b, 
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

[[nodiscard]] Vector fastest_gradient_descent(const CSR& csr, const Vector& x_0, const Vector& b,
        double required_accuracy, unsigned frequency_checking, unsigned iteration_limit);

// сходится за n(размерность пространства) шагов
// если не сошлись за n шагов, то ну, тут больше нечего делать, поэтому 
// если iteration_limit > n, то мы все равно делаем n итераций, циклы лучше воротить не внутри метода
[[nodiscard]] Vector conjugate_gradients(const CSR& csr, Vector& x_0, const Vector& b,
        double required_accuracy, unsigned iteration_limit);

}
