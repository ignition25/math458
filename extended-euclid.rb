# gcd(a,b)
# g = a
g = ARGV[0].to_i
a = g
# y = b
y = ARGV[1].to_i
b = y
u = 1
x = 0

def gcd(a,b,g,u,x,y)
    if y == 0
        v = (g - a * u)/b
        puts "g = #{g}, u = #{u}, v = #{v}"
    else
        # quotient
        q = g / y
        # remainder
        t = g % y
        s = u - q * x
        u = x
        g = y
        x = s
        y = t
        gcd(a,b,g,u,x,y)
    end
end

gcd(a,b,g,u,x,y)