#include <../headers_of_meth/CSR.hpp>


CSR::CSR(const vector_d &matrix, int length) {
    // пока что пишу на push_back-ах, потом надо думать как их убрать
    rows.push_back(0);
    for (int i = 0; i < matrix.size() / length; ++i) {
        int pr = 0;
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

CSR::CSR(const DenseMatrix &matrix) {
    CSR(matrix.get_vector(), matrix.get_length());
}

double CSR::operator()(int m_row, int m_col) const {
    for (int k = rows[m_row]; k < rows[m_row + 1]; ++k) {
        if (cols[k] == m_col) {
            return values[k];
        }
    }
    return 0;
}

vector_d CSR::operator*(const vector_d &vect) const {
    vector_d res(n, 0);
    for (auto i : rows) {
        for (auto value = rows[i]; value)
    }

}

Vector CSR::operator*(const Vector &vect) const {
    return Vector((*this) * vect.get_vector());
}
