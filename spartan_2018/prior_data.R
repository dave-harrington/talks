library(openintro)
data(COL)

myPDF("prior.pdf", 4.65, 2,
      mar = c(1.7,1,0.1,1))

# curve 1
X <- seq(0,1,0.01)
Y <- dnorm(X, mean = 0.5, sd = 0.15)
plot(X, Y,
     type = 'l',
     col = 3,
     axes = FALSE,
     xlim = c(0, 1))
axis(1, at = seq(0, 1, 0.5))
lines(X, Y)
#abline(h = 0)

# curve 2
#X <- seq(3,35, 0.01)
#Y <- dnorm(X, 19, 4)
#lines(X, Y)

dev.off()
