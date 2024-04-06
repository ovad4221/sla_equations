#pragma once 
#include <vector>

using std::vector;
typedef vector<double> vector_d;

class ThrSLE {
private:
    vector_d a_comp;
    vector_d b_comp;
    vector_d c_comp;   
public:
    ThrSLE(const vector_d &a, const vector_d &b, const vector_d &c);

    unsigned int get_size() const;

    double get_from_a(unsigned int i) const;

    double get_from_b(unsigned int i) const;

    double get_from_c(unsigned int i) const;

};

vector_d solve_thr_sle(const ThrSLE &mat, const vector_d &d);

