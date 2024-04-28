#include <fstream>
#include "../src/headers_of_meth/simple_iter_methods.hpp"
#include <iostream>
#include <ostream>

int main() {
    // co https://colab.research.google.com/drive/1Bwi91H4Enk_DsZIB_dl0qTbWYvjPQn63?usp=sharing
    vector_d matri = {16, 0, 0, 0, 0, 18, 0, 0, 0, 0, 21, 0, 0, 0, 0, 24};
    CSR A(matri, 4);
    Vector b({6, 6, 6, 6});
    Vector x_0({0, 0, 0, 0});

    Vector resn = iter_methods::fastest_gradient_descent(A, x_0, b, 0.1, 1, 20);
    std::cout << resn;

    std::ofstream out;
    out.open("resulty_3.csv");
    out.precision(10);
    out << "ni,res0,res1,res2,res3\n";
    out << "0,0,0,0,0\n";

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
    out << "ni,res0,res1,res2,res3\n";
    out << "0,0,0,0,0\n";

    required_accuracy = 0.01;
    res = x_0;
    r = A * res - b;
    for (size_t i = 0u; i < 30; ++i) {
        if (r.module_v() < required_accuracy) break;

        // решение одномерной минимизации
        r = A * res - b;
        res = res - 3.0 / 40.0 * (A * res - b);

        out << i << ',' << res[0] << ',' << res[1] << ',' << res[2] << ',' << res[3] << std::endl;

        if (i == 29) std::cout << "Noup 1" << std::endl;
    }
    // there we have res
    out.close();

    // 2
    out.open("resulty_2.csv");
    out.precision(10);
    out << "ni,res0,res1,res2,res3\n";
    out << "0,0,0,0,0\n";

    required_accuracy = 0.01;
    res = x_0;
    r = A * res - b;
    for (size_t i = 0u; i < 30; ++i) {
        if (r.module_v() < required_accuracy) break;

        // решение одномерной минимизации
        r = A * res - b;
        res = res - (1.0 / 20.0) * (A * res - b);

        out << i << ',' << res[0] << ',' << res[1] << ',' << res[2] << ',' << res[3] << std::endl;

        if (i == 29) std::cout << "Noup 2" << std::endl;
    }
    // there we have res
    out.close();


    // 4


    // 5
    // CG
    out.open("resulty_5.csv");
    out.precision(10);
    out << "ni,res0,res1,res2,res3\n";

    size_t iteration_limit = 20;
    iteration_limit = (iteration_limit < x_0.get_size()) ? iteration_limit : x_0.get_size();

    x_0 = Vector({0, 0, 0, 0});
    required_accuracy = 0.01;

    r = A * x_0 - b;
    Vector r_old = r;
    Vector d = r;
    // std::cout << x_0;
    out << 0 << ',' << x_0[0] << ',' << x_0[1] << ',' << x_0[2] << ',' << x_0[3] << std::endl;

    for (size_t i = 0; i < iteration_limit; ++i) {
        // x_0 = x_0 - alp * d;
        x_0 = x_0 - (r * r) / (d * (A * d)) * d;
        // r ^ (i + 1)
        r = A * x_0 - b;

        out << i + 1 << ',' << x_0[0] << ',' << x_0[1] << ',' << x_0[2] << ',' << x_0[3] << std::endl;
        if (r.module_v() < required_accuracy) {
            break;
        }
        // betta = (r * r) / (r_old * r_old); d = r^(i + 1) + betta * d ^ i
        // d ^ (i + 1)
        d = r + (r * r) / (r_old * r_old) * d;
        r_old = r;

        if (i == iteration_limit - 1) std::cout << "Noup 5" << std::endl;
    }

}
