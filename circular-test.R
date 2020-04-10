library(tidyverse)
library(rstan)
library(tidyposterior)

m <- stan_model("circular-test.stan")

d <- sampling(m)

print(d)
traceplot(d)
pairs(d)

