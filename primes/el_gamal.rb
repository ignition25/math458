#!/usr/bin/ruby
require_relative 'sieve_of_eratosthenes'

g_a_k = fast_power 783126311904636, 955362250684418, 1125899906848799
g_a_k_inverse = fast_power g_a_k, 1125899906848797, 1125899906848799
m = (g_a_k_inverse * 104670539972472) % 1125899906848799
puts g_a_k_inverse
puts m
