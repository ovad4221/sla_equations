#pragma once 

#include <vector>
#include <ostream>
#include <iostream>


// класс базисного вектора ортогональной системы
// class OrtBaseVector: public Vector {
// public:
//     // на и-ом месте 1 остальные 0
//     OrtBaseVector(unsigned int i, unsigned int height);
// };


class Vector {
protected:
    std::vector<double> vect;
public:
    Vector(const std::vector<double> &vect);
    // Vector with n zeros
    Vector(unsigned int n);
    // base vector i - 1
    Vector(unsigned int i, unsigned int height);
    Vector(std::initializer_list<double> l);
    Vector();
    
    ~Vector();

    double module_v() const;
 
    double square_module_v() const;

    const std::vector<double>& get_vector() const;

    // Получение размерности вектора
    size_t get_size() const;

    // Получение значения i-ой координаты вектора
    double get_value(size_t i) const;

    double& operator[] (size_t i);

    // Задание значения i-ой координаты вектора равным value
    void set_value(size_t i, double value);

    bool operator== (const Vector& v2) const;

    bool operator!= (const Vector& v2) const;

    Vector operator+ (const Vector& v2) const;

    Vector operator- (const Vector& v2) const;

    void operator+= (const Vector& v2);

    void operator-= (const Vector& v2);

    Vector operator* (const double a) const;

    // скалярное произведение
    double operator* (const Vector& v2) const;

    // скалярное произведение в неортогональном базисе
    template<typename MatrixClass>
    double dot(const Vector& v2, const MatrixClass& gramma) const;

    // векторное произведение
    double operator^ (const Vector& v2) const;

    Vector operator/ (const double a) const;

    // template<typename T>
    // Vector operator* (const T a) const;
    // // must have
    // Vector operator* (const double a) const;
    // Vector operator* (const int a) const;

    void operator*= (const double a);

    void resize(unsigned int n);

    // slice from vector (наследие древности)
    Vector slice(unsigned int i0, unsigned int i1) const;

    Vector slice(unsigned int i);

    // приклеить справа
    void glue_v(const Vector &v2);

    void glue_v(const Vector &&v2);
};

Vector operator* (double a, const Vector& v);

// template<typename T>
// Vector operator* (T a, const Vector& v);
// Vector operator* (double a, const Vector& v);
// Vector operator* (int a, const Vector& v);

std::ostream& operator<<(std::ostream& os, const Vector &v);
