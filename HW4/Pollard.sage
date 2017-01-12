n = 862021547643631582396998212208722914288258644234791307950582916442747222039795609417741932278317121
a = 2
a_power_fact_k_mod_n = mod(2^1, n)
k = 1
while True:
	tmp = gcd(a_power_fact_k_mod_n-1, n)
	#print(format("a_power_fact_k_mod_n: %d, k: %d" % (a_power_fact_k_mod_n, k)));
	if (tmp > 1):
		p = tmp
		break
	k += 1
	a_power_fact_k_mod_n = power(a_power_fact_k_mod_n, k)
print p, (int(n) / int(p))