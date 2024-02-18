#include "../headers_of_meth/DenseMatrix.hpp"


DenseMatrix::DenseMatrix(const vector_d &matrix, int length): matrix(matrix), length(length), height(matrix.size() / length) {};

double DenseMatrix::operator()(int row, int cal) const {
    return matrix[row * length + cal];
}

vector_d DenseMatrix::operator*(const vector_d &vect) const {
    vector_d res(height);
    for (int i = 0; i < height; ++i) {
        res[i] = 0;
        for (int j = 0; j < length; ++j) {
            res[i] += (*this)(i, j) * vect[j];
        }
    }
    return res;
}

Vector DenseMatrix::operator*(const Vector &vect) const {
    return Vector((*this) * vect.get_vector());
}

const vector_d& DenseMatrix::get_vector() const {
        return matrix;
    }

int DenseMatrix::get_length() const {
    return length;
}

int DenseMatrix::get_height() const {
    return height;
}
