#include "../headers_of_meth/3dm_sp_h.hpp"
#include <iostream>

Thr_SLE::Thr_SLE(const vector_d &a, const vector_d &b, const vector_d &c): 
    a_comp(a), b_comp(b), c_comp(c) {};

unsigned int Thr_SLE::get_size() const {
    return b_comp.size();
}

double Thr_SLE::get_from_a(int i) const {
    return a_comp[i];
}

double Thr_SLE::get_from_b(int i) const {
    return b_comp[i];
}

double Thr_SLE::get_from_c(int i) const {
    return c_comp[i];
}


vector_d solve_thr_sle(Thr_SLE &mat, vector_d &d) {
    unsigned int s = mat.get_size();
    vector_d p(s);
    vector_d q(s);
    
    p[0] = -1 * mat.get_from_c(0) / mat.get_from_b(0);
    q[0] = d[0] / mat.get_from_b(0);

    for (unsigned int i = 1; i < s - 1; ++i) {
        p[i] = -1 * mat.get_from_c(i) / (mat.get_from_a(i - 1) * p[i - 1] + mat.get_from_b(i));
        q[i] = (d[i] - mat.get_from_a(i - 1) * q[i - 1]) / (mat.get_from_a(i - 1) * p[i - 1] + mat.get_from_b(i));
    }

    vector_d solution(s);

    solution[s - 1] = (d[s - 1] - mat.get_from_a(s - 2) * q[s - 2]) / (mat.get_from_b(s - 1) + mat.get_from_a(s - 2) * p[s - 2]);

    for (unsigned int i = s - 2; i >= 0; --i) {
        solution[i] = p[i] * solution[i + 1] + q[i];
    }

    return solution;
};

