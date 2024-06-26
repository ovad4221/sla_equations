#include "../headers_of_meth/CSR.hpp"


CSR::CSR(const vector_d &matrix, int length) {
    // пока что пишу на push_back-ах, потом надо думать как их убрать
    rows.push_back(0);
    int pr = 0;
    for (int i = 0; i < matrix.size() / length; ++i) {
        for (int j = 0; j < length; ++j) {
            if (matrix[i * length + j] != 0) {
                values.push_back(matrix[i * length + j]);
                cols.push_back(j);
                pr += 1;
            }
        }

        rows.push_back(pr);
    }
}

CSR::CSR(const DenseMatrix &matrix) : CSR(matrix.get_vector(), matrix.get_length()) {}

double CSR::operator()(int m_row, int m_col) const {
    for (int k = rows[m_row]; k < rows[m_row + 1]; ++k) {
        if (cols[k] == m_col) {
            return values[k];
        }
    }
    return 0;
}

const vector_d& CSR::get_values() const {
    return values;
}

const vector_d& CSR::get_cols() const {
    return cols;
}

const vector_d& CSR::get_rows() const {
    return rows;
}

vector_d CSR::operator* (const vector_d &vect) const {
    vector_d res(rows.size() - 1);
    for (unsigned i = 0; i < rows.size() - 1; ++i) {
        for (auto value = rows[i]; value < rows[i + 1]; ++value) {
            res[i] += values[value] * vect[cols[value]];
        }
    }
    return res;
}

Vector CSR::operator* (const Vector &vect) const {
    return Vector{this->operator*(vect.get_vector())};
}

vector_d CSR::mult_wishout_d(const vector_d &vect) const {
    vector_d res(vect.size());
    for (unsigned i = 0; i < vect.size(); ++i) {
        for (auto value = rows[i]; value < rows[i + 1]; ++value) {
            if (i != cols[value]) res[i] += values[value] * vect[cols[value]];
        }
    }
    return res;
}

Vector CSR::mult_wishout_d(const Vector &vect) const {
    return Vector{this->mult_wishout_d(vect.get_vector())};
}

vector_d CSR::mult_only_obr_d(const vector_d &vect) const {
    vector_d res(vect.size());
    for (unsigned i = 0; i < vect.size(); ++i) {
        for (auto value = rows[i]; value < rows[i + 1]; ++value) {
            if (i == cols[value]) {
                res[i] = static_cast<double>(vect[cols[value]] / values[value]);
                break;
            } 
        }
    }
    return res;
}

Vector CSR::mult_only_obr_d(const Vector &vect) const {
    return Vector{this->mult_only_obr_d(vect.get_vector())};
}

// output print
std::ostream& operator<<(std::ostream& os, const CSR &m) {
    os << "CSR: \n";
    for (auto i : m.get_values()) {
        os << i << ' ';
    }
    os << std::endl;
    for (auto i : m.get_cols()) {
        os << i << ' ';
    }
    os << std::endl;
    for (auto i : m.get_rows()) {
        os << i << ' ';
    }
    os << std::endl << std::endl;
    return os;
}
