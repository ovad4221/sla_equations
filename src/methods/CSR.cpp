#include <../headers_of_meth/CSR_h.hpp>


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

CSR::CSR(DenseMatrix &matrix) {
    CSR(matrix.get_vector(), matrix.get_length());
}
