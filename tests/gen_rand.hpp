#pragma once
#include "../src/headers_of_meth/3dm_sp.hpp"
#include <random>


ThrSLE rand_thr_sle(size_t h, std::uniform_real_distribution<double>& uniform, std::mt19937_64& engine);

void rand_vector(vector_d& vect, size_t len, std::uniform_real_distribution<double>& uniform, 
        std::mt19937_64& engine);

vector_d rand_vector(size_t len, std::uniform_real_distribution<double>& uniform, 
        std::mt19937_64& engine);

vector_d get_d_from_x(ThrSLE &sle, vector_d &sol);
