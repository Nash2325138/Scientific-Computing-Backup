function Q1()
	A = randi(10, 5, 9)
	A(:, [1, 4]) = []
	X = randi(10, 1, 5)
	X(2) *= 5
	A(:, [2, 3]) = A(:, [3, 2])
	B = A([3,1,5], :)
endfunction

function [x, y, g] = ext_euc(a, b)
	if b == 0
		x = 1;
		y = 0;
		g = a;
	else 
		amodb = mod(a,b);
		[x1, y1, g] = ext_euc(b, mod(a, b));
		x = y1;
		y = x1 - (a-amodb)/b * y1;;
	end
end