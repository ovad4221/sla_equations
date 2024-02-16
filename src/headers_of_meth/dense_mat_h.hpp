#pragma once 
#include <vector>
#include "./vector.h"

using std::vector;
typedef vector<double> vector_d;


class DenseMatrix {
private:
    vector_d matrix;
    int length;
    int height;
public:
    DenseMatrix(const vector_d &matrix, int length);

    // надо проверить
    vector_d& get_vector();

    int get_length();

    int get_height();

    double operator()(int row, int cal);

    vector_d operator*(vector_d &vect);

    Vector operator*(Vector &vect);
    


};
