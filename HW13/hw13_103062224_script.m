pdf = gamrnd(5,1, 10000, 1);
histogram(pdf);
phat = mle(pdf, 'distribution', 'gam')

