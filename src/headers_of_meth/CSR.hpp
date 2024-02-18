#pragma once
#include <vector>
#include "../headers_of_meth/DenseMatrix.hpp"

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

};
