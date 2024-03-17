#include "../headers_of_meth/householder.hpp"


int sign(double a) {
    return (a > 0) - (a < 0);
}

Vector& theta(const Vector& x, const Vector& v) {
    return x - 2 * v * static_cast<double>((v * x) / (v * v));
}

double mult_sv(std::span<double>& span, const Vector& v) {
    double sc = 0;
    for (size_t i = 0; i < v.size(); ++i) {
        sc += span[i] * v2.vect[i];
    }
    return sc;
}

// double mult_sv(std::span<double>& span1, std::span<double>& span2) {
//     double sc = 0;
//     for (int i = 0; i < span1.size(); ++i) {
//         sc += span1[i] * span2[i];
//     }
//     return sc;
// }

// преобразование для спан-объекта
void theta(std::span<double>& span, const Vector& v) {
    double gg = static_cast<double>(mult_sv(span, v) / (v * v));
    for (size_t i = 0; i < span.size(); ++i) {
        span[i] = span[i] - 2 * v[i] * gg;
    }
}

// Q - diag
HouseholderQr::HouseholderQr(const DenseMatrix& A): R(A), Q(A.get_height(), A.get_height()) {
    for (size_t i = 0; i < A.get_length(); ++i) {
        Vector x = R.get_column(1, 0);
        // базисный
        Vector e_i(i, A.get_height());
        Vector v_i = x + sign(x[0]) * x.module_v() * e_i;

        R.set_column(i, i, theta(x, v_i));
        for (size_t j = i + 1; j < A.get_length(); ++j) {
            // на k-ом шаге не трогаем верхние строчки, столбцы которых мы сделали
            R.set_column(j, i, theta(R.get_column(j, i), v_i));
        }

        for (size_t j = 0; j < A.get_length(); ++j) {
            theta(Q.get_span(j, i), v_i);
        }
    }
};

std::pair<DenseMatrix&, DenseMatrix&> HouseholderQr::get_qr() const {
    return std::pair<dense_CSR::Matrix, dense_CSR::Matrix>(Q, R);
}

void HouseholderQr::Q_transpose() {
    Q.transpose();
}

vector_d HouseholderQr::solve(const vector_d& d, const DenseMatrix& A) {
    HouseholderQr hqr = HouseholderQr(A);
    auto pair = hqr.get_qr();
    DenseMatrix Q = pair.first;
    DenseMatrix R = pair.second;
    Q.transpose();
    vector_d d_new = Q * d;
    vector_d res{A.get_height()};
    
    for (long int i = A.get_height() - 1; i >= 0; --i) {
        for (size_t j = 0; j < A.get_height() - i - 1; ++j) {
            d_new[i] -= R.get_vector()[R.get_length() * (i + 1) - 1 - j] * rez[rez.size() - 1 - j];
        }
        rez[i] = static_cast<double>([i] / R[R.get_length() * i + i]);
    }

    return rez;
}
