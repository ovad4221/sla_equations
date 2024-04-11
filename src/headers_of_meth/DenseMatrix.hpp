#pragma once 
#include <vector>
#include "./vector.hpp"
#include <ranges>

// using std::vector;
// typedef vector<double> vector_d;
using vector_d = std::vector<double>;


class DenseMatrix {
private:
    vector_d matrix_;
    size_t length_;
    size_t height_;

public:
    DenseMatrix(const vector_d &matrix, size_t length);
    DenseMatrix(size_t length, size_t height, double value);
    // eye
    DenseMatrix(size_t length, size_t height);

    const vector_d& get_vector() const;

    size_t get_length() const;

    size_t get_height() const;

    // извлечь k-ый столбец матрицы как вектор с from строчки
    Vector get_column(size_t k, size_t from) const;

    // установить k-ый столбец матрицы как новый вектор
    void set_column(size_t k, size_t from, const Vector& col);

    // извлечь k-ую строку матрицы как вектор с from строчки
    // void change_string(int k, int from);

    // установить k-ую строку матрицы как новый вектор
    // void set_string(int k, int from, const Vector& col);

    // вернуть спан на кусок строчки номера k 
    // с элемента индекса from
    std::span<double> get_span(size_t k, size_t from);

    double& operator[] (size_t ind);

    double operator() (int row, int cal) const;

    vector_d operator*(const vector_d &vect) const;

    Vector operator*(const Vector &vect) const;

    // for squere matrix
    void sq_transpose();

    void transpose();
};

std::ostream& operator<<(std::ostream& os, const DenseMatrix &m);
