
#Problema en Biología: Estudio de la Infección por un Patógeno**

#  Un equipo de investigadores está llevando a cabo un estudio para determinar la proporción de 
#  individuos en una población de insectos que está infectada por un patógeno mortal. 
#  Para esto, seleccionaron una muestra aleatoria de 100 insectos y observaron si cada uno 
#  de ellos estaba infectado (evento de éxito) o no (evento de fracaso) por el patógeno. 
#  Registramos el resultado de cada insecto en términos de éxito (infectado) o fracaso 
#  (no infectado).

#Se define la variable aleatoria \(X\) como:

#  - \(X = 1\) si un insecto está infectado por el patógeno (evento de éxito).
#  - \(X = 0\) si un insecto no está infectado por el patógeno (evento de fracaso).

#El objetivo del estudio es estimar la proporción \(p\) de insectos en la población total 
#que está infectada por el patógeno. Utilizando la muestra de 100 insectos, los investigadores 
#obtuvieron que 25 de ellos estaban infectados (\(X = 1\))

n <- 100 
muestra <- sample(c(rep(1, 25), rep(0, 75)))
# En este caso usamos sample para realizar un shuffle del arreglo para que se vea más real 
muestra
# Imprimimos la muestra 


#**Preguntas:**

#  1. ¿Cuál es la proporción muestral de insectos infectados basada en los datos observados?
proporcion_muestral <- sum(muestra)/n
proporcion_muestral

#  2. Utilizando la proporción muestral como estimador, ¿cuál es una estimación puntual de la 
#  proporción \(p\) de insectos infectados en la población completa?
estimacion_p <- sum(muestra) / 100 
estimacion_p
# Como vimos en clase, el estimador es # 1's / n 


#  3. ¿Cuál es la fórmula para calcular el intervalo de confianza del 95% para la proporción \(p\) 
#  utilizando la distribución de probabilidad muestral?

# Fórmula: estimación-puntual +- Z * sqrt(estimación-puntual * (1 - estimación-puntual) / n)
# Donde Z es el valor de una distribución normal estándar para un nivel de confianza del 95% = 1.96 (aproximadamente)

z <- qnorm(0.975) # 1 - alpha/2 , alpha = 0.05
intervalo_confianza <- estimacion_p + c(-z, z) * sqrt(estimacion_p * (1 - estimacion_p)/n)
intervalo_confianza


#  4. Si se selecciona aleatoriamente otro conjunto de 100 insectos y se encuentra que 28 de 
#  ellos están infectados, ¿cuál es la nueva estimación puntual de la proporción \(p\) y su 
#  intervalo de confianza? ¿Qué conclusiones se pueden sacar de esto?
# Nueva muestra

# Estimación puntual actualizada de p (alternativamente con el comando mean() )
nueva_muestra <- c(rep(1, 20000), rep(0, 80000))
nueva_muestra

# Estimación puntual actualizada de p (alternativamente con el comando mean() )
estimacion_p_actualizada <- mean(nueva_muestra)
estimacion_p_actualizada

z <- qnorm(0.975)
intervalo_confianza_actualizado <- estimacion_p_actualizada + c(-z, z) * sqrt(estimacion_p_actualizada * (1 - estimacion_p_actualizada)/100000)
intervalo_confianza_actualizado

#**Problema en Genética: Mutación Genética**

#  Un equipo de genetistas está investigando una mutación genética específica en una población de individuos. 
# La mutación es de tipo puntual y se puede observar en un gen particular. 
# Cada individuo de la población puede llevar consigo la mutación (evento de éxito) o no llevarla 
# (evento de fracaso) en ese gen.

#Se define la variable aleatoria \(X\) como:

#  - \(X = 1\) si un individuo de la población lleva la mutación genética (evento de éxito).
#  - \(X = 0\) si un individuo de la población no lleva la mutación genética (evento de fracaso).

# El objetivo del estudio es estimar la probabilidad \(p\) de que un individuo seleccionado al azar de la población 
# lleve la mutación genética.

#**Preguntas:**

# Datos de nuestro estudio genético (1 para lleva la mutación, 0 para no lleva)
datos <- c(1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0,
           1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1,
           1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1,
           0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0,
           1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1,
           0, 0, 1, 1)

#  1. Si se selecciona aleatoriamente un individuo de la población y se encuentra que lleva la mutación genética, 
# ¿cuál es la estimación puntual de la probabilidad \(p\)?


#  2. Si se selecciona aleatoriamente un grupo de 100 individuos de la población y se registra cuántos de ellos llevan 
# la mutación genética, ¿cuál es la estimación puntual de la probabilidad \(p\) basada en este grupo?

# Estimación puntual de la probabilidad p en un grupo de 100 individuos
grupo_100 <- sample(datos, 100, replace = FALSE)
# Se realiza un muestreo aleatorio de tamaño 100 sin reemplazo 

#  3. ¿Cuál es el intervalo de confianza del 95% para la probabilidad \(p\) basado en el grupo de 100 individuos?


#  **Problema: Ensayos Clínicos para una Nueva Medicina**

#  Un laboratorio farmacéutico está realizando ensayos clínicos para evaluar la efectividad de una nueva 
# medicina en pacientes con una enfermedad específica. Se sabe que la probabilidad de que un paciente 
# seleccionado al azar experimente una mejoría significativa como resultado de tomar la medicina es del 40%.

#1. ¿Cuál es la probabilidad de que un paciente seleccionado al azar experimente una mejoría significativa como resultado de tomar la medicina?
p <- 0.4 
probabilidad_mejoria <- p 

#2. Si se seleccionan aleatoriamente 50 pacientes y se les administra la medicina, ¿cuál es la probabilidad de que al menos 20 de ellos experimenten una mejoría significativa?
n <- 50 
probabilidad_mejoria_20 <- 1 - pbinom(19, n, probabilidad_mejoria)
probabilidad_mejoria_20

#3. ¿Cuál es la probabilidad de que exactamente 15 de los pacientes experimenten una mejoría significativa?


#4. ¿Cuál es la probabilidad de que más de 30 de los pacientes experimenten una mejoría significativa?


#5. ¿Cuál es el número esperado de pacientes que experimentarán una mejoría significativa si se administran la medicina a 100 pacientes?


#**Problema: Análisis de Datos de Éxito en Experimento de Biología Molecular**

#  Imagina que tienes una base de datos de un experimento de biología molecular en el que se midió el éxito o 
# fracaso de la inserción de un gen específico en células. Cada célula se considera un ensayo independiente. 
# El éxito se codifica como 1 si la inserción del gen tuvo éxito y como 0 si fracasó.
# Establecer la tasa de éxito (probabilidad de éxito)
probabilidad_exito <- 0.6

# Generar una muestra aleatoria de 1000 observaciones
datos_experimento <- rbinom(1000, size = 1, prob = probabilidad_exito)
datos_experimento

#La base de datos contiene 1000 observaciones de estos ensayos independientes. Ahora deseas realizar algunas inferencias sobre la tasa de éxito en la inserción de este gen en todas las células.

#1. Calcula la proporción de éxito (éxito = 1) en el experimento y utiliza un intervalo de confianza del 95% para estimar el rango en el que se encuentra la verdadera tasa de éxito en la inserción del gen.

# Cálculo de la proporción de éxito


# Cálculo del intervalo de confianza del 95%
conf_int <- t.test(datos_experimento, conf.level = 0.95)$conf.int
conf_int

a <- 0.05
proporcion_exito + c(-qnorm(1-a/2), qnorm(1-a/2)) * sqrt((1/1000)* proporcion_exito * (1 - proporcion_exito))

#2. ¿Cuál es la probabilidad de que, en una muestra aleatoria de 100 células, al menos 80 de ellas tengan éxito en la inserción del gen?

# Probabilidad usando función de distribución acumulativa

#3. ¿Cuál es la probabilidad de que, en una muestra aleatoria de 200 células, exactamente 150 de ellas tengan éxito en la inserción del gen?

# Probabilidad usando función de probabilidad puntual

#4. ¿Cuál es la probabilidad de que, en una muestra aleatoria de 50 células, más de 40 de ellas tengan éxito en la inserción del gen?

# Probabilidad usando función de distribución acumulativa

#5. ¿Cuál es la probabilidad de que, en una muestra aleatoria de 500 células, menos de 100 de ellas tengan éxito en la inserción del gen?

# Probabilidad usando función de distribución acumulativa

#6. ¿Cuál es el número esperado de éxitos en una muestra aleatoria de 300 células?

# Número esperado de éxitos (media de una distribución binomial)



#  **Problema:**
#  Supongamos que estás trabajando en un hospital y deseas estudiar la cantidad promedio de pacientes 
# que llegan a la sala de emergencias por hora. Durante una semana de observaciones, 
# registras el número de pacientes que llegan a la sala de emergencias cada hora. 
#Los datos obtenidos se presentan a continuación:


datos <- c(2, 3, 4, 1, 2, 5, 2, 3, 3, 4, 2, 3, 2, 4, 3, 4, 1, 3, 2, 2, 5, 2, 3, 4, 
           3, 2, 3, 2, 1, 2, 4, 2, 3, 3, 4, 2, 3, 2, 2, 5, 3, 4, 2, 3, 1, 4, 3, 2, 
           2, 3, 2, 4, 2, 3, 1, 4, 2, 3, 2, 5, 2, 3, 3, 4, 2, 3, 2, 2, 1, 4, 3, 2, 
           2, 3, 2, 4, 2, 3, 4, 2, 1, 3, 2, 5, 2, 3, 3, 4, 2, 3, 2, 2, 1, 4, 3, 2, 
           2, 3, 2, 4, 2, 3, 1, 4)


# Ahora, quieres estimar la tasa promedio de llegada de pacientes por hora y responder 
# algunas preguntas relacionadas con las probabilidades de llegada.

#1. Estima la tasa promedio de llegada de pacientes por hora (parámetro lambda) utilizando los datos proporcionados.


#2. ¿Cuál es la probabilidad de que lleguen exactamente 3 pacientes en una hora?


#3. ¿Cuál es la probabilidad de que lleguen al menos 5 pacientes en una hora?


#4. ¿Cuál es el número esperado de pacientes que llegarán en las próximas 2 horas?


#5. ¿Cuál es la probabilidad de que lleguen menos de 2 pacientes en una hora?



# Problema:
# Supongamos que trabajas en un hospital y deseas modelar la cantidad promedio de ataques cardíacos 
# que ocurren en una noche en este hospital. Basado en datos históricos, estimas que la tasa promedio
# de ataques cardíacos por noche es de 2.75. 
# Utiliza la distribución Poisson para resolver las siguientes preguntas.

# Parámetro lambda (tasa promedio de ataques cardíacos por noche)
lambda <- 2.75

#1: ¿Cuál es la probabilidad de que no ocurra ningún ataque cardíaco en una noche en este hospital?


#2: ¿Cuál es la probabilidad de que ocurran exactamente 3 ataques cardíacos en una noche en este hospital?


# Pregunta 3: ¿Cuál es la probabilidad de que ocurran menos de 2 ataques cardíacos en una noche en este hospital?


