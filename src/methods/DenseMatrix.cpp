#include "../headers_of_meth/DenseMatrix.hpp"
#include <algorithm>


DenseMatrix::DenseMatrix(const vector_d &matrix, int length): matrix(matrix), length(length), height(matrix.size() / length) {};
DenseMatrix::DenseMatrix(int length, int hieght, double value): matrix(vector_d(length * height, value)), length(length), height(height) {};

DenseMatrix::DenseMatrix(int length, int hieght) {
    matrix.resize(length * height);
    for (unsigned i = 0; i < (length < height) ? length : height; ++i) {
        matrix[i + i * length];
    }
}

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

const Vector& DenseMatrix::get_column(int k) const {
    Vector col(height);
    for (unsigned int i = 0; i < height; ++i) {
        col.setValue(i, matrix[k + i * length]);
    }
    return col;
}

void DenseMatrix::set_column(int k, const Vector& col) {
    for (unsigned int i = 0; i < height; ++i) {
        matrix[k + i * length] = col.getValue(i);
    }
}

std::span<double>& DenseMatrix::get_span(int k, int from) {
    std::span<double> sp{matrix.begin() + k * length + from, matrix.begin() + k * (length + 1)};
    return sp;
}

int DenseMatrix::get_length() const {
    return length;
}

int DenseMatrix::get_height() const {
    return height;
}

void DenseMatrix::transpose() {
    for (size_t i = 0; i < height; ++i){
            for(size_t j = i + 1; j < length; ++j){
                double temp = matrix[length * i + j];
                matrix[length * i + j] = matrix[length * j + i];
                matrix[length * j + i] = temp;
            }
        }
    auto temp = length;
    length = height;
    height = temp; 
}
