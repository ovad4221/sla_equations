#pragma once 
#include <vector>
#include "./vector.h"

// using std::vector;
// typedef vector<double> vector_d;
using vector_d = std::vector<double>;


class DenseMatrix {
private:
    vector_d matrix;
    int length;
    int height;
public:
    DenseMatrix(const vector_d &matrix, int length);

    const vector_d& get_vector() const;

    int get_length() const;

    int get_height() const;

    double operator()(int row, int cal) const;

    vector_d operator*(const vector_d &vect) const;

    Vector operator*(const Vector &vect) const;
    

};
