#include "../headers_of_meth/dense_mat_h.hpp"


DenseMatrix::DenseMatrix(const vector_d &matrix, int length): matrix(matrix), length(length), height(matrix.size() / length) {};

double DenseMatrix::operator()(int row, int cal) {
    return matrix[row * length + cal];
}

vector_d DenseMatrix::operator*(vector_d &vect) {
    vector_d res(height);
    for (int i = 0; i < height; ++i) {
        res[i] = 0;
        for (int j = 0; j < length; ++j) {
            res[i] += (*this)(i, j) * vect[j];
        }
    }
    return res;
}

vector_d& DenseMatrix::get_vector() {
        return matrix;
    }

int DenseMatrix::get_length() {}

int DenseMatrix::get_height() {}
