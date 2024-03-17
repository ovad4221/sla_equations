#pragma once
#include <vector>
#include "./DenseMatrix.hpp"

class CSR {
private:
    vector_d values;
    vector_d cols;
    vector_d rows;
public:
    CSR(const vector_d &matrix, int length);
    CSR(const DenseMatrix &matrix);
    
    double operator()(int row, int cal) const;

    vector_d operator*(const vector_d &vect) const;
    Vector operator*(const Vector &vect) const;

    vector_d mult_wishout_d(const vector_d &vect) const;
    Vector mult_wishout_d(const Vector &vect) const;

    vector_d mult_only_obr_d(const vector_d &vect) const;
    Vector mult_only_obr_d(const Vector &vect) const;
};
