# Instalar y cargar el paquete plotly
install.packages("plotly")
library(plotly)

# -------------------------------------------------------------------------------------------------
# Gráfico de línea y de Pie

# Datos inventados
categorias <- c("A", "B", "C", "D", "E")
valores <- c(10, 25, 15, 30, 20)
longitudes <- c(1, 2, 3, 4, 5)
frecuencias <- c(5, 8, 12, 18, 25)
etiquetas <- c("Rojo", "Verde", "Azul", "Amarillo", "Naranja")
x_dispersion <- c(1, 2, 3, 4, 5)
y_dispersion <- c(10, 20, 15, 25, 30)

# Gráfico de Líneas
line_plot <- plot_ly(x = categorias, y = frecuencias, type = "scatter", mode = "lines")

# Gráfico Circular (Pie Chart)
pie_plot <- plot_ly(labels = etiquetas, values = valores, type = "pie")

# Mostrar los gráficos
line_plot
pie_plot

# -------------------------------------------------------------------------------------------------
# Gráfico de dispersión

# Datos inventados
conjunto1_x <- c(1, 2, 3, 4, 5)
conjunto1_y <- c(10, 15, 20, 25, 30)

conjunto2_x <- c(2, 3, 4, 5, 6)
conjunto2_y <- c(5, 12, 18, 22, 28)

conjunto3_x <- c(3, 4, 5, 6, 7)
conjunto3_y <- c(8, 14, 19, 23, 29)

# Crear la gráfica de dispersión
scatter_plot <- plot_ly() %>%
  add_trace(x = conjunto1_x, y = conjunto1_y, type = "scatter", mode = "markers", name = "Conjunto 1") %>%
  add_trace(x = conjunto2_x, y = conjunto2_y, type = "scatter", mode = "markers", name = "Conjunto 2") %>%
  add_trace(x = conjunto3_x, y = conjunto3_y, type = "scatter", mode = "markers", name = "Conjunto 3") %>%
  layout(title = "Gráfico de Dispersión",
         xaxis = list(title = "Eje X"),
         yaxis = list(title = "Eje Y"))

# Mostrar la gráfica de dispersión
scatter_plot

# -------------------------------------------------------------------------------------------------
# Gráfico de barras

# Datos inventados
conjunto1 <- c(10, 15, 20, 25, 30)
conjunto2 <- c(5, 12, 18, 22, 28)
conjunto3 <- c(8, 14, 19, 23, 29)
categorias <- c("A", "B", "C", "D", "E")

# Crear la gráfica de barras
bar_plot <- plot_ly() %>%
  add_trace(x = categorias, y = conjunto1, name = "Conjunto 1", type = "bar") %>%
  add_trace(x = categorias, y = conjunto2, name = "Conjunto 2", type = "bar") %>%
  add_trace(x = categorias, y = conjunto3, name = "Conjunto 3", type = "bar") %>%
  layout(title = "Gráfico de Barras",
         xaxis = list(title = "Categorías"),
         yaxis = list(title = "Valores"))

# Mostrar la gráfica de barras
bar_plot

# -------------------------------------------------------------------------------------------------
# Gráfico de burbuja

# Datos inventados
categorias <- c("A", "B", "C", "D", "E")
valores <- c(10, 25, 15, 30, 20)
tamanos_burbujas <- c(20, 40, 60, 80, 100)
# Crear el gráfico de burbujas
bubble_plot <- plot_ly(x = categorias, y = valores, marker = list(size = tamanos_burbujas), type = "scatter", mode = "markers")
# Mostrar el gráfico de burbujas
bubble_plot

# -------------------------------------------------------------------------------------------------
# Gráfico de caja (Box-plot)

# Datos inventados
conjunto1 <- c(10, 15, 20, 25, 30)
conjunto2 <- c(5, 12, 18, 22, 28)
conjunto3 <- c(8, 14, 19, 23, 29)

# Crear la gráfica de boxplots
box_plot <- plot_ly() %>%
  add_boxplot(y = conjunto1, name = "Conjunto 1") %>%
  add_boxplot(y = conjunto2, name = "Conjunto 2") %>%
  add_boxplot(y = conjunto3, name = "Conjunto 3") %>%
  layout(title = "Gráfico de Boxplots",
         yaxis = list(title = "Valores"))

# Mostrar la gráfica de boxplots
box_plot

# Crear la gráfica de boxplots con puntos
box_plot_with_points <- plot_ly() %>%
  add_boxplot(y = conjunto1, name = "Conjunto 1", boxpoints = "all") %>%
  add_boxplot(y = conjunto2, name = "Conjunto 2", boxpoints = "all") %>%
  add_boxplot(y = conjunto3, name = "Conjunto 3", boxpoints = "all") %>%
  layout(title = "Boxplots con Puntos",
         yaxis = list(title = "Valores"))

# Mostrar la gráfica de boxplots con puntos
box_plot_with_points


