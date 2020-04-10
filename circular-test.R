library(tidyverse)
library(rstan)
library(tidyposterior)

m <- stan_model("circular-test.stan")

d <- sampling(m)

print(d)
traceplot(d)
pairs(d)

p <- rstan::extract(d)

p$x %>% mean
p$y %>% hist
p$y %>% mean
rexp(1000, 1) %>% mean
rexp(1000, 1/3) %>% mean
x = rexp(1000, 1/1)
y = rexp(1000, 1/(3 * x))
mean(y)
