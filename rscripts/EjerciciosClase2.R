
# Ejemplos prácticos con datos
# Ejercicio 1 - Variable Bernoulli
patients_success <- 25
total_patients <- 50
proportion_estimate <- patients_success / total_patients
conf_interval_bernoulli <- prop.test(patients_success, total_patients, conf.level = 0.95)$conf.int

# Imprimir resultados
cat("\nEjercicio 1 - Variable Bernoulli:\n")
cat("Estimación de Proporción:", proportion_estimate, "\n")
cat("Intervalo de Confianza (95%):", conf_interval_bernoulli, "\n")

# Ejercicio 2 - Variable Binomial
successful_procedures <- 20
total_procedures <- 100
rate_estimate <- successful_procedures / total_procedures
conf_interval_binomial <- binom.test(successful_procedures, total_procedures, conf.level = 0.9)$conf.int

# Imprimir resultados
cat("\nEjercicio 2 - Variable Binomial:\n")
cat("Estimación de Tasa:", rate_estimate, "\n")
cat("Intervalo de Confianza (90%):", conf_interval_binomial, "\n")

# Ejercicio 3 - Variable Poisson
hourly_arrivals <- c(2, 4, 1, 3, 2, 5, 2, 3, 4, 1, 3, 2, 1, 3, 2, 4)
mean_arrivals <- mean(hourly_arrivals)
conf_interval_poisson <- t.test(hourly_arrivals, conf.level = 0.95)$conf.int

# Imprimir resultados
cat("\nEjercicio 3 - Variable Poisson:\n")
cat("Estimación de Tasa Promedio:", mean_arrivals, "\n")
cat("Intervalo de Confianza (95%):", conf_interval_poisson, "\n")
