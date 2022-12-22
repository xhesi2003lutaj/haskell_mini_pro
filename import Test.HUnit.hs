
s:: Integral a =>a->a
s 0= 1
s n=s(n-1)+ sum[s k*s(n-k-1)|k <-[0..(n-1)]]
