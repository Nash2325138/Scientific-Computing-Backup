def find_3_amicable():
	max_test = 10 ** 6
	count = 0
	amicable = []
	tested = [False] * max_test
	for i in range(1, max_test):
		if tested[i]:
			continue
		j = sigma(i) - i
		tested[j] = True
		if j > 0 and i != j and sigma(j) - j == i:
			amicable.append((i, j))
			count += 1
			if count >= 3:
				break
	return amicable

ans = find_3_amicable()
print(ans)
