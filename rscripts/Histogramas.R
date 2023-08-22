# Instalar y cargar los paquetes necesarios
install.packages("ggplot2")
install.packages("plotly")
library(ggplot2)
library(plotly)

# Histograma con ggplot2
ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "black") +
  labs(title = "Histograma de Longitud de Pétalos",
       x = "Longitud de Pétalos",
       y = "Frecuencia")

# Histograma con plotly
plot_ly(data = iris, x = ~Petal.Length, type = "histogram") %>%
  layout(title = "Histograma de Longitud de Pétalos",
         xaxis = list(title = "Longitud de Pétalos"),
         yaxis = list(title = "Frecuencia"))
