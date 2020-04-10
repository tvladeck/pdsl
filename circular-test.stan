parameters {
  real<lower=0> y;
  real x;
}

model {
  // y ~ exponential(3);
  x ~ normal(0, 1);
  y ~ exponential(3 * x);
}

