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
