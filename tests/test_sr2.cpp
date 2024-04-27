#include <fstream>
#include "../src/headers_of_meth/simple_iter_methods.hpp"
#include <iostream>
#include <ostream>

int main() {
    vector_d matri = {16, 0, 0, 0, 0, 18, 0, 0, 0, 0, 21, 0, 0, 0, 0, 24};
    CSR A(matri, 4);
    Vector b({6, 6, 6, 6});
    Vector x_0({0, 0, 0, 0});

    Vector resn = iter_methods::fastest_gradient_descent(A, x_0, b, 0.1, 1, 20);
    std::cout << resn;

    std::ofstream out;
    out.open("resulty_3.csv");
    out.precision(10);
    out << "ni,resx,resy,resz\n";

    double required_accuracy = 0.01;
    Vector res = x_0;
    Vector r = A * res - b;
    for (size_t i = 0u; i < 20; ++i) {
        if (r.module_v() < required_accuracy) break;

        // решение одномерной минимизации
        r = A * res - b;
        res = res - (r * r / (r * (A * r))) * (A * res - b);

        out << i << ',' << res[0] << ',' << res[1] << ',' << res[2] << ',' << res[3] << std::endl;
        if (i == 19) std::cout << "Noup 1" << std::endl;

    }
    // there we have res
    out.close();

    // 1
    out.open("resulty_1.csv");
    out.precision(10);
    out << "ni,resx,resy,resz\n";

    required_accuracy = 0.01;
    res = x_0;
    r = A * res - b;
    for (size_t i = 0u; i < 30; ++i) {
        if (r.module_v() < required_accuracy) break;

        // решение одномерной минимизации
        r = A * res - b;
        res = res - 3 / 40 * (A * res - b);

        out << i << ',' << res[0] << ',' << res[1] << ',' << res[2] << ',' << res[3] << std::endl;

        if (i == 29) std::cout << "Noup 1" << std::endl;
    }
    // there we have res
    out.close();

    // 4
    // out.open("resulty_4.csv");
    // out.precision(10);
    // out << "ni,resx,resy,resz\n";

    // required_accuracy = 0.01;
    // res = x_0;
    // r = A * res - b;
    // for (size_t i = 0u; i < 100; ++i) {
    //     if (r.module_v() < required_accuracy) break;

    //     // решение одномерной минимизации
    //     r = A * res - b;
    //     res = res - tau_opt * (A * res - b);

    //     out << i << ',' << res[0] << ',' << res[1] << ',' << res[2] << ',' << res[3] << std::endl;

    //     if (i == 99) std::cout << "Noup 2" << std::endl;
    // }
    // // there we have res
    // out.close();

    // // 2
    // out.open("resulty_1.csv");
    // out.precision(10);
    // out << "ni,resx,resy,resz\n";

    // required_accuracy = 0.01;
    // double tau_opt = 2 / (16 + 24);
    // res = x_0;
    // r = A * res - b;
    // for (size_t i = 0u; i < 100; ++i) {
    //     if (r.module_v() < required_accuracy) break;

    //     // решение одномерной минимизации
    //     r = A * res - b;
    //     res = res - tau_opt * (A * res - b);

    //     out << i << ',' << res[0] << ',' << res[1] << ',' << res[2] << ',' << res[3] << std::endl;

    //     if (i == 99) std::cout << "Noup 2" << std::endl;
    // }
    // // there we have res
    // out.close();


    // 5
    // CG
    double iteration_limit = 20;
    iteration_limit = (iteration_limit < x_0.get_size()) ? iteration_limit : x_0.get_size();

    Vector r = A * x_0 - b;
    Vector r_old = r;
    Vector d = r;
    if (r.module_v() < required_accuracy) {
        return x_0;
    }

    for (size_t i = 0; i < iteration_limit; ++i) {
        // x_0 = x_0 - alp * d;
        x_0 = x_0 - (r * r) / (d * (csr * d)) * d;
        // r ^ (i + 1)
        r = csr * x_0 - b;
        if (r.module_v() < required_accuracy) {
            return x_0;
        }
        // betta = (r_old * r_old) / (r * r); d = r^(i + 1) + betta * d ^ i
        // d ^ (i + 1)
        d = r + (r_old * r_old) / (r * r) * d;
        r_old = r;
    }

    return x_0;

}
