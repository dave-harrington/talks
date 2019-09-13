#library(openintro)
#data(COL)

# plot of prior

myPDF("prior.pdf", 4.65, 2,
      mar = c(1.7,1,0.1,1))

# prior
X <- seq(0,1,0.01)
Y <- dnorm(X, mean = 0.5, sd = 0.15)
plot(X, Y,
     type = 'l',
     col = 3,
     axes = FALSE,
     xlim = c(0, 1))
axis(1, at = seq(0, 1, 0.5))
lines(X, Y)
legend("topleft", c("Prior"), lty = 1, col=1)


dev.off()

myPDF("prior_data.pdf", 4.65, 2,
      mar = c(1.7,1,0.1,1))


# prior again
X <- seq(0,1,0.01)
Y <- dnorm(X, mean = 0.5, sd = 0.15)
plot(X, Y,
     type = 'l',
     col = 3,
     axes = FALSE,
     xlim = c(0, 1))
axis(1, at = seq(0, 1, 0.5))
lines(X, Y)


# data 
binom.data = rbinom(n = 100, size = 1, prob = 0.75)
h = hist(binom.data, plot=F)
h$counts = 3*h$counts/sum(h$counts)
lines(h, col = 2)
legend("topleft", c("Prior", "Data"), lty = 1, col=1:2)

dev.off()



myPDF("prior_data_posterior.pdf", 4.65, 2,
      mar = c(1.7,1,0.1,1))


X <- seq(0,1,0.01)
Y <- dnorm(X, mean = 0.5, sd = 0.15)
plot(X, Y,
     type = 'l',
     col = 3,
     axes = FALSE,
     xlim = c(0, 1))
axis(1, at = seq(0, 1, 0.5))
lines(X, Y)

# data

lines(h, col = 2)

# posterior
X <- seq(0, 1, 0.01)
Y <- dnorm(X, mean = 0.6, sd = 0.15)
lines(X, Y, col = 3)



legend("topleft", c("Prior", "Data", "Posterior"), lty = 1, col=1:3)


dev.off()




