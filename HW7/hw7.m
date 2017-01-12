1;
function [] = Q1()
	x = linspace(-1, 1); 
	y1 = cos(acos(x));
	y2 = cos(2*acos(x));
	y3 = cos(4*acos(x));
	y4 = cos(6*acos(x));

	hold;
	p1 = plot(x, y1, '+');
	p2 = plot(x, y2, 'o');
	p3 = plot(x, y3, 'v');
	p4 = plot(x, y4, '.');

endfunction

function [] = Q2()
	x = linspace(-pi, 9*pi, 1000);
	m = linspace(0, 20, 1000);
	plot(m.*sin(x), m.*cos(x));
endfunction

function [] = Q3()
	a = 6; b = 4; c = 2;
	u = linspace(-pi/2, pi/2);
	v = linspace(-pi, pi);
	[u, v] = meshgrid(u, v);
	x = a*cos(u).*sin(v);
	y = b*cos(u).*cos(v);
	z = c*sin(u);
	mesh(x, y, z)
	[x, y, z] = meshgrid(1:.1:2);
endfunction

