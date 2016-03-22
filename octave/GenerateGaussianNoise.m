noise = randn([1 10000]);
[n, x] = hist(noise, linspace(-3,3,21));
#disp([x; n]);
plot(x,n);
pause();
