# Test de la loi normale
shapiro.test(dat$GN)
shapiro.test(dat$TN)
shapiro.test(dat$GP)
shapiro.test(dat$TP)

# Tests non paramétriques

Green <- matrix(c(132, 66, 66, 100),
               nrow = 2,
               dimnames = list("1st Survey" = c("Même couleur", "Pas même couleur"),
                                                      "2nd Survey" = c("Vertes 4 m", "Vertes 30 m")))
Red <- matrix(c(84, 118, 59, 45),
                nrow = 2,
                dimnames = list("1st Survey" = c("Même couleur", "Pas même couleur"),
                                "2nd Survey" = c("Rouge 4 m", "Rouge 30 m")))


fisher.test(Green) # Pour données non appariées
fisher.test(Red) # Pour données non appariées
chisq.test(Green) # Pour données non appariées
chisq.test(Red) # Pour données non appariées
mcnemar.test(Green) # Pour données appariées
