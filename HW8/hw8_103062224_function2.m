function [maxt, mint] = hw8_103062224_function2()
	maxt = -1;
	mint = -1;
	format rat
	cycles = [23, 28, 33];
	starts = cycles./4;
	for i = [ceil(max(starts)):23*28*33]
		flag = 1;
		for j = [1:3]
			if mod((i - starts(j)), cycles(j)) != 0
				flag = 0;
			end
		end
		if (flag == 1) 
			maxt = i
			break
		end
	end
	for i = [ceil(max(starts*3)):23*28*33]
		flag = 1;
		for j = [1:3]
			if  mod(i - starts(j)*3 , cycles(j)) != 0 
				flag = 0;
			end
		end
		if (flag == 1) 
			mint = i
			break;
		end
	end
	return
endfunction
