function [] =  hw8_103062224_function1(t0, t1)
	t = (t1-28) : 0.5 : (t1 + 28);
	delta_t = 2*pi*(t-t0);
	y1 = 100*sin(delta_t/23);
	y2 = 100*sin(delta_t/28);
	y3 = 100*sin(delta_t/33);

	hold();
	plot(t, y1, "-;Physical;", "linewidth", 4);
	plot(t, y2, "-;Emotional;", "linewidth", 4);
	plot(t, y3, "-;Intellectual;", "linewidth", 4);
	legend("location", "southwest");
	axis([t(1), t(end), -100, 100])
	datetick("x", 6);
	text(t1-3, -115, datestr(t1, 2));
	title( cstrcat("birthday: ", datestr(t0, 2)) );
	line(t1, linspace(-100, 100, 2), "linewidth", 3);
end
