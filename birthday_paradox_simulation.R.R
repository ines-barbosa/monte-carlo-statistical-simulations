set.seed(1006)
n_pessoas <- 16
n_sim <- 20000

# Simulação das 20000 salas
salas <- matrix(sample(1:365, size = n_pessoas * n_sim, replace = TRUE), 
                nrow = n_pessoas, ncol = n_sim)

# Proporção de salas com pelo menos 2 aniversários repetidos
prop <- mean(apply(salas, 2, function(x) length(unique(x)) < n_pessoas))
round(prop, 4)