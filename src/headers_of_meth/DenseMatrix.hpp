#pragma once 
#include <vector>
#include "./vector.hpp"
#include <ranges>

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
    DenseMatrix(int length, int hieght, double value);
    // eye
    DenseMatrix(int length, int hieght);

    const vector_d& get_vector() const;

    int get_length() const;

    int get_height() const;

    // извлечь k-ый столбец матрицы как вектор с from строчки
    const Vector& get_column(int k, int from) const;

    // установить k-ый столбец матрицы как новый вектор
    void set_column(int k, int from, const Vector& col);

    // извлечь k-ую строку матрицы как вектор с from строчки
    // void change_string(int k, int from);

    // установить k-ую строку матрицы как новый вектор
    // void set_string(int k, int from, const Vector& col);

    // вернуть спан на кусок строчки номера k 
    // с элемента индекса from
    std::span<double>& get_span(int k, int from);

    double operator()(int row, int cal) const;

    vector_d operator*(const vector_d &vect) const;

    Vector operator*(const Vector &vect) const;

    void transpose();

};
