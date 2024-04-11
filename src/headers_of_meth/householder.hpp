#include "./DenseMatrix.hpp"


class HouseholderQr {
private:
    DenseMatrix Q, R;
public:
    HouseholderQr(const DenseMatrix& A);

    vector_d solve(const vector_d& d);

    void Q_transpose();

    // std::pair<DenseMatrix&, DenseMatrix&> get_qr() const;
};
