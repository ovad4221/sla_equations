#include "headers_of_meth/DenseMatrix.hpp"
#include <algorithm>


DenseMatrix::DenseMatrix(const vector_d &matrix, size_t length): matrix_(matrix), length_(length), height_(matrix.size() / length) {};
DenseMatrix::DenseMatrix(size_t length, size_t height, double value): matrix_(length * height, value), length_(length), height_(height) {};

DenseMatrix::DenseMatrix(size_t length, size_t height): DenseMatrix(length, height, 0) {
    for (size_t i = 0; i < (length_ < height_ ? length_ : height_); ++i) {
        matrix_[i + i * length_] = 1;
    }
}

double DenseMatrix::operator() (int row, int cal) const {
    return matrix_[row * length_ + cal];
}

double& DenseMatrix::operator[] (size_t ind) {
    return matrix_[ind];
}

vector_d DenseMatrix::operator*(const vector_d &vect) const {
    vector_d res(height_);
    for (size_t i = 0; i < height_; ++i) {
        res[i] = 0;
        for (size_t j = 0; j < length_; ++j) {
            res[i] += (*this)(i, j) * vect[j];
        }
    }
    return res;
}

Vector DenseMatrix::operator*(const Vector &vect) const {
    return Vector((*this) * vect.get_vector());
}

const vector_d& DenseMatrix::get_vector() const {
        return matrix_;
    }

Vector DenseMatrix::get_column(size_t k, size_t from) const {
    Vector col(height_);
    for (unsigned int i = from; i < height_; ++i) {
        col.set_value(i, matrix_[k + i * length_]);
    }
    return col;
}

void DenseMatrix::set_column(size_t k, size_t from, const Vector& col) {
    for (unsigned int i = from; i < height_; ++i) {
        matrix_[k + i * length_] = col.get_value(i);
    }
}


size_t DenseMatrix::get_length() const {
    return length_;
}

size_t DenseMatrix::get_height() const {
    return height_;
}

void DenseMatrix::sq_transpose() {
    for (size_t i = 0; i < height_; ++i) {
            for(size_t j = i + 1; j < length_; ++j) {
                double temp = matrix_[length_ * i + j];
                matrix_[height_ * i + j] = matrix_[length_ * j + i];
                matrix_[height_ * j + i] = temp;
            }
        }
    auto temp = length_;
    length_ = height_;
    height_ = temp; 
}

void DenseMatrix::transpose() {
    vector_d h(matrix_.size());
    for (size_t j = 0; j < length_; ++j) {
            for(size_t i = 0; i < height_; ++i) {
                h[j * height_ + i] = matrix_[i * length_ + j];
            }
        }
    matrix_ = h;
    auto temp = length_;
    length_ = height_;
    height_ = temp; 
}

std::span<double> DenseMatrix::get_span(size_t k, size_t from) {
    std::span<double> sp{matrix_.begin() + k * length_ + from, matrix_.begin() + k * (length_ + 1)};
    return sp;
}

// output print
std::ostream& operator<<(std::ostream& os, const DenseMatrix &m) {
    os << "DenseMatrix with length = " << m.get_length() << " and height = " << m.get_height() << " :\n";
    for (size_t i = 0; i < m.get_height(); ++i) {
        for(size_t j = 0; j < m.get_length(); ++j) {
            os << m(i, j) << ' ';
        }
        os << std::endl;
    }
    os << std::endl;
    return os;
}


