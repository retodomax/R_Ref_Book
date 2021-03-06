## meat
meat <- data.frame(steak.id = c(1, 6, 7, 12, 5, 3, 10, 9, 2, 8, 4, 11),
                   treatment = rep(c("Commercial", "Vacuum", "Mixed", 
                                     "CO2"), each = 3),
                   y = c(7.66, 6.98, 7.80, 5.26, 5.44, 5.80, 
                         7.41, 7.33, 7.04, 3.51, 2.91, 3.66))

## snails
snails <- data.frame(density = factor(rep(rep(c(6, 12, 24), each = 3),2)),
                     season = factor(rep(c("Spring", "Summer"), each = 9)),
                     y = c(1.17, 0.50, 1.67, 1.50, 0.83, 1.00, 0.67, 0.67, 0.75,
                           4.00, 3.83, 3.83, 3.33, 2.58, 2.75, 2.54, 1.83, 1.63))

## pine
combinations <- expand.grid(location = c("Taglieda", "Pfyn", "Rheinau"),
                            exposure = c("short", "long", "permanent"))
pine <- data.frame(rbind(combinations, combinations), 
                   y = c(25, 45, 50, 42, 62, 52, 62, 80, 88, 
                         25, 42, 50, 38, 58,62, 55, 75, 95))

## PlantGroth
data("PlantGrowth")

## cheddar
cheddar <- data.frame(R50 = rep(c("no", "yes", "no", "yes"), each = 3),
                      R21 = rep(c("no", "no", "yes", "yes"), each = 3),
                      acids = c(1.697, 1.601, 1.830,
                                2.032, 2.017, 2.409,
                                2.211, 1.673, 1.973,
                                2.091, 2.255, 2.987))

## grasses
grasses <- read.table("http://users.stat.umn.edu/~gary/book/fcdae.data/pr8.6",
                      header = TRUE)
grasses[, "ht"] <- factor(grasses[, "ht"], labels = c("1", "3", "6"))
grasses[, "fert"] <- factor(grasses[, "fert"], labels = c("0", "8", "16", "32"))
grasses[, "int"] <- factor(grasses[, "int"], labels = c("1", "3", "6", "9"))

## animals
animals <- data.frame(weight = c(61, 100, 56, 113, 99, 103, 75, 62,
                                 75, 102, 95, 103, 98, 115, 98, 94,
                                 58, 60, 60, 57, 57, 59, 54, 100,
                                 57, 56, 67, 59, 58, 121, 101, 101,
                                 59, 46, 120, 115, 115, 93, 105, 75),
                      sire = factor(rep(1:5, each = 8)))

## trigly
trigly <- data.frame(y = c(142.3, 144.0, 148.6, 146.9, 142.9, 147.4,
                           133.8, 133.2, 134.9, 146.3, 145.2, 146.3,
                           125.9, 127.6, 108.9, 107.5, 148.6, 156.5,
                           148.6, 153.1, 135.5, 138.9, 132.1, 149.7,
                           152.0, 151.4, 149.7, 152.0, 142.9, 142.3,
                           141.7, 141.2),
                     day = factor(rep(1:4, each = 8)),
                     machine = factor(rep(rep(1:4, each = 2), 2)))

## ergoStool
data("ergoStool", package = "nlme")
ergoStool$Subject <- factor(ergoStool$Subject, ordered = FALSE)

## Machines
data("Machines", package = "nlme")
Machines$Worker <- factor(Machines$Worker, ordered = FALSE)

## cheese.data
cheese.data <- read.table("http://stat.ethz.ch/~meier/teaching/data/cheese.dat",
                          header = TRUE)
cheese.data[, "rater"] <- factor(cheese.data[, "rater"])

## Pastes
data("Pastes", package = "lme4")

## Oats
data("oats", package = "MASS")