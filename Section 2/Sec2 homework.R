# Law Of Large Numbers using For Loop


n <- 0
a <- 1000000
for (i in rnorm(a)){
  if (i <= 1 & i >= -1){
    n <- n + 1
  } else {
  } 
}
m <- (n/a)*100
m

# law of large numbers using while loop  


n <- 10000000
x <- 0
s <- 0
t <- 0
u <- 0
while (x < n){
  a <- rnorm(1)
  if (a > 1){
    s <- s + 1
  } else if (a < -1){
    t <- t + 1
  } else {
    u <- u + 1
  }
  x <- x + 1
}
m <- u/n
perc <- m*100
perc
