#!/usr/bin/ruby

def sieve_of_eratosthenes max
    max -= 1
    a = Array.new(max) { |index| index + 2}
    for i in 0..(max-1)
        if a[i] == 0 or i > (a.length-1)/2
            next
        end
        for j in (i+1)..(a.length-1)
            if a[j] % a[i] == 0
                a[j] = 0
            end
        end
    end
    sum = 0
    for i in 0..(a.length-1)
        if a[i] != 0
            sum += a[i]
        end
    end
    return sum
end

def fast_power base, exponent, modulus
    result = 1
    base = base % modulus
    while exponent > 0
        if (exponent % 2 == 1)
            result = (result * base) % modulus
        end
        exponent = exponent >> 1
        base = (base * base) % modulus
    end
    return result
end

def find_a g, big_a, p
    for i in 0..(p - 1)
        temp = fast_power g, i, p
        if temp == big_a
            return i
        end
    end
end

puts find_a 2, 974, 1373

