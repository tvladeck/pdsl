library(tidyverse)
library(rstan)
library(tidyposterior)

m <- stan_model("circular-test.stan")

d <- sampling(m)
# lots of divergent transitions

print(d)
traceplot(d)


