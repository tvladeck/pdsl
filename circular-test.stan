parameters {
  real<lower=0> y;
  real<lower=0> x;
}

model {
  y ~ exponential(3);
  x ~ exponential(1);
  y ~ exponential(3 * x);
}

