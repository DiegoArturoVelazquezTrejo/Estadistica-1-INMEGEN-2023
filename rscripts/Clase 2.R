# Código en R con ejemplos y ejercicios de estadística

# Cargar librerías
library(ggplot2)
library(plotly)

# Ejemplo de variable Bernoulli
# Cantidad de pacientes
n <- 200

# Simular n resultados de una prueba médica
# (positivo = 1, negativo = 0)
resultados <- sample(c(0, 1), n, 
                     replace = TRUE, prob = c(0.8, 0.2))

# Calcular la proporcion de resultados positivos
proporcion_positivos <- sum(resultados) / n
# -----------------------------------------------------------------------------------------------

# Ejemplo de variable Binomial

# Parámetros de la distribución binomial
n <- 20  # Número de ensayos
p <- 0.3 # Probabilidad de éxito en un ensayo

# Generar datos a partir de una distribución binomial
datos_binom <- rbinom(1000, n, p)

# Crear un histograma interactivo con Plotly
histograma <- plot_ly(x = datos_binom, type = "histogram",
                      histnorm = "probability",
                      marker = list(color = "rgba(100, 149, 237, 0.7)"),
                      opacity = 0.7) %>%
  layout(title = "Distribución Binomial",
         xaxis = list(title = "Número de Éxitos"),
         yaxis = list(title = "Probabilidad"))

histograma
# -----------------------------------------------------------------------------------------------

# Ejemplo de variable Poisson
# Generar datos simulados de una distribución Poisson
lambda <- 2
datos_poisson <- rpois(1000, lambda)

histograma <- plot_ly(x = datos_poisson, type = "histogram", 
                      histnorm = "probability",
                      xbins = list(size = 0.5),
                      colors = "blue",
                      marker = list(line = list(color = "black", width = 0.5))) %>%
  layout(title = "Histograma de Distribución Poisson",
         xaxis = list(title = "Valores"),
         yaxis = list(title = "Probabilidad"))
histograma

# Calcular la probabilidad de exactamente 3 mutaciones
prob_3_mutaciones <- dpois(3, lambda)

# -----------------------------------------------------------------------------------------------
