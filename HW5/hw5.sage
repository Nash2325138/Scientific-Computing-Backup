def region():
	f = -2*(x^2 - 4*x + 2)*x
	g = -x^2
	h = abs(f-g)
	# plot(h, (x, -10, 10))
	return integral(h, x, 0, 4)

def derivative():
	h(x) = sin(x)/x
	g(x) = 0
	f = Piecewise([ [(-infinity, 0), h], [(0, infinity), h] ])
	return f.derivative()

def Simpson(f, a, b, n):
	# return N((b-a)/6 * (f(a) + 4*f((a+b)/2) + f(b)))
	size = abs(b-a) / n
	r = f(a) + f(b)
	for i in range(1, n, 2):
		r += 4 * f(a + i*size)
	for i in range(2, n, 2):
		r += 2 * f(a + i*size)
	return N(r*size/3)

def midpoint(f, a, b, n):
	r = 0;
	size = abs(b-a) / n;
	for i in range(n):
		r += f(a + i*size + size/2)
	return N(r*size)

q1 = region()
q2 = derivative()

# plot(-2*(x^2 - 7*x + 2)*log(abs(x)+1)*sin(x)/(1.1^abs(x)), (x, -30, 30))
piece = 12
# f=-2*(x^2 - 7*x + 2)*x*sin(log(abs(x)+1))
f = -2*(x^2 - 4*x + 2)*x
q3_s = N(Simpson(f, 0.5, 4, piece))
q3_m = N(midpoint(f, 0.5, 4, piece))
q3_i = N(integral(f, x, 0.5, 4))

print("\n----------------------------------------------------------------------\n")
print q1, "\n"
print q2, "\n"
print 'Sagemath:', q3_i
print 'Simpson: ', q3_s, ' error:', abs((q3_s - q3_i) / q3_i) 
print 'midpoint:', q3_m, ' error:', abs((q3_m - q3_i) / q3_i)
