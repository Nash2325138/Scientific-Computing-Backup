warning('off');
figure

subplot(1, 2, 1);
t0 = datenum(1996, 4, 19);
t1 = fix(now);
hw8_103062224_function1(t0, t1);
printf("1. See the picture\n");

subplot(1, 2, 2);
t1 = t0 + 23*28*33;
hw8_103062224_function1(t0, t1);
printf("2. It will takes %d days until all three simultaneously return to initial condition, and I'll be %d years old then.\n", 23*28*33, floor(23*28*33/365));

[x, y] = hw8_103062224_function2();
if x == -1 && y == -1
	printf("3. It is impossible\n");
else
	if (x != -1)
		printf("It will take at least %d days to reach their maximum\n");
	end
	if (y != -1)
		printf("It will take at least %d days to reach their minimum\n");
	end
end
