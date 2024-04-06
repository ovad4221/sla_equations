#include "../headers_of_meth/3dm_sp.hpp"
#include <iostream>

ThrSLE::ThrSLE(const vector_d &a, const vector_d &b, const vector_d &c): 
    a_comp(a), b_comp(b), c_comp(c) {};

unsigned int ThrSLE::get_size() const {
    return static_cast<unsigned int>(b_comp.size());
}

double ThrSLE::get_from_a(unsigned int i) const {
    return a_comp[static_cast<unsigned int>(i)];
}

double ThrSLE::get_from_b(unsigned int i) const {
    return b_comp[static_cast<unsigned int>(i)];
}

double ThrSLE::get_from_c(unsigned int i) const {
    return c_comp[static_cast<unsigned int>(i)];
}


vector_d solve_thr_sle(const ThrSLE &mat, const vector_d &d) {
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

    for (int i = s - 2; i >= 0; --i) {
        solution[i] = p[i] * solution[i + 1] + q[i];
    }

    return solution;
};

