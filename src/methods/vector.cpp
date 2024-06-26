#include <cmath>
#include <algorithm>
#include <initializer_list>
#include "../headers_of_meth/vector.hpp"

using std::istream;
using std::ostream;
using std::cout;
using std::endl;

// надо доработатьЫ
// OrtBaseVector::OrtBaseVector(unsigned int i, unsigned int height): Vector(height) {
//     vect[i] = 1;
// }

Vector::Vector(const std::vector<double> &vect): vect(vect) {};
Vector::Vector(unsigned int n): vect(n, 0) {};

Vector::Vector(unsigned int i, unsigned int height) {
    vect.resize(height, 0);
    vect[i] = 1;
};

Vector::Vector(std::initializer_list<double> l): vect(l) {};
Vector::Vector(): Vector(6) {};

Vector::~Vector() = default;

double Vector::square_module_v() const {
    double sq_sum = 0;
    for (unsigned int i = 0; i < vect.size(); ++i) {
        sq_sum += pow(vect[i], 2);
    }
    return sq_sum;
}

double Vector::module_v() const {
    return std::sqrt(square_module_v());
}

const std::vector<double>& Vector::get_vector() const {
    return vect;
}

size_t Vector::get_size() const {
    return vect.size();
}

double Vector::get_value(size_t i) const {
    return vect[i];
}

double& Vector::operator[] (size_t i) {
    return vect[i];
}

void Vector::set_value(size_t i, double value) {
    vect[i] = value;
}

bool Vector::operator== (const Vector& v2) const {
    if (v2.vect.size() != vect.size()) {
        return false;
    }
    for (unsigned int i = 0; i < vect.size(); ++i) {
        if (vect[i] != v2.vect[i]) {
            return false;
        }
    }
    return true;
}

bool Vector::operator!= (const Vector& v2) const {
    return !(*this == v2);
}

Vector Vector::operator+ (const Vector& v2) const {
    // if (v2.vect.size() != vect.size()) {
    //     cout << "ERROR +: vectors of different dimensions \n";
    //     return *this;
    // }
    Vector v_out(vect.size());
    for (unsigned int i = 0; i < v2.vect.size(); ++i) {
        v_out.vect[i] = vect[i] + v2.vect[i];
    }
    return v_out;
}

Vector Vector::operator- (const Vector& v2) const {
    // if (v2.vect.size() != vect.size()) {
    //     cout << "ERROR -: vectors of different dimensions \n";
    //     return *this;
    // }
    Vector v_out(vect.size());
    for (unsigned int i = 0; i < v2.vect.size(); ++i) {
        v_out.vect[i] = vect[i] - v2.vect[i];
    }
    return v_out;
}

void Vector::operator+= (const Vector& v2) {
    // if (v2.vect.size() != vect.size()) {
    //     cout << "ERROR +=: vectors of different dimensions \n";
    // }
    // else

    for (unsigned int i = 0; i < vect.size(); ++i) {
        vect[i] += v2.vect[i];
    }
}

void Vector::operator-= (const Vector& v2) {
    // if (v2.vect.size() != vect.size()) {
    //     cout << "ERROR +=: vectors of different dimensions \n";
    // }
    // else

    for (unsigned int i = 0; i < vect.size(); ++i) {
        vect[i] -= v2.vect[i];
    }
}

// template<typename T>
// Vector Vector::operator* (const T a) const {
//     Vector v_out(vect.size());
//     for (unsigned int i = 0; i < vect.size(); ++i) {
//         v_out.vect[i] = vect[i] * a;
//     }
//     return v_out;
// }

Vector Vector::operator* (const double a) const {
    Vector v_out(vect.size());
    for (unsigned int i = 0; i < vect.size(); ++i) {
        v_out.vect[i] = vect[i] * a;
    }
    return v_out;
}


double Vector::operator* (const Vector& v2) const {
    double sc = 0;
    for (int i = 0; i < vect.size(); ++i) {
        sc += vect[i] * v2.vect[i];
    }
    return sc;
}

template<typename MatrixClass>
double Vector::dot(const Vector& v2, const MatrixClass& gramma) const {
    return (*this) * (gramma * v2);
}


Vector Vector::operator/ (const double a) const {
    Vector v_out(vect.size());
    for (unsigned int i = 0; i < vect.size(); ++i) {
        v_out.vect[i] = vect[i] / a;
    }
    return v_out;
}

void Vector::operator*= (const double a) {
    for (unsigned int i = 0; i < vect.size(); ++i) {
        vect[i] *= a;
    }
}

void Vector::resize(unsigned int n) {
    vect.resize(n);
}

// slice from vector
Vector Vector::slice(unsigned int i0, unsigned int i1) const {
    // if (i1 < i0){
    //     std::cout << "Warning. i1 must be >= i0. indexes swapped. \n";
    //     std::swap(i1, i0);
    // }
    // else if (i0 > vect.size()) {
    //     std::cout << "Warning. i0 must be <= vector size. Taked v.s. \n";
    //     i0 = vect.size();
    // }
    
    // if (i1 > vect.size()){
    //     std::cout << "Warning. i1 must be <= vector size. Taked v.s. \n";
    //     i1 = vect.size();
    // }

    Vector out_vector(i1 - i0);
    for (unsigned int i = i0; i < i1; ++i) {
        out_vector.vect[i - i0] = vect[i];
    }

    return out_vector;
}

Vector Vector::slice(unsigned int i) {return slice(0, i);};

// приклеить справа
void Vector::glue_v(const Vector &v2) {
    unsigned int old_size = vect.size();
    vect.resize(old_size + v2.vect.size());

    for (unsigned int i = old_size; i < vect.size(); ++i) {
        vect[i] = v2.vect[i - old_size];
    }
}

// приклеить справа r-value
void Vector::glue_v(const Vector &&v2) {
    unsigned int old_size = vect.size();
    vect.resize(old_size + v2.vect.size());

    for (unsigned int i = old_size; i < vect.size(); ++i) {
        vect[i] = v2.vect[i - old_size];
    }
}

// template<typename T>
// Vector operator* (T a, const Vector& v) { 
//     Vector v_out(v.get_size());
//         for (unsigned int i = 0; i < v.get_size(); ++i) {
//             v_out.set_value(i, v.get_value(i) * a);
//         }
//         return v_out;
// }

Vector operator* (double a, const Vector& v) { 
    Vector v_out(v.get_size());
        for (unsigned int i = 0; i < v.get_size(); ++i) {
            v_out.set_value(i, v.get_value(i) * a);
        }
        return v_out;
}

std::ostream& operator<<(std::ostream& os, const Vector &v) {
    os << "Vector with size " << v.get_size()<< ": ( ";
    for (size_t i = 0; i < v.get_size(); ++i) {
        os << v.get_value(i) << ' ';
    }
    os << ") \n";
    return os;
};
