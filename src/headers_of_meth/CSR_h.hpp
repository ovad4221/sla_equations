#pragma once
#include <vector>
#include "../headers_of_meth/dense_mat_h.hpp"

class CSR {
private:
    vector_d values;
    vector_d cols;
    vector_d rows;
public:
    CSR(const vector_d &matrix, int length);
    CSR(DenseMatrix &matrix);
    

};
