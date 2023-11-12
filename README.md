# Tesos De Grado Machine Learning
Algoritmo realizado para la tesis de grado de ingeniería electrónica, el cual mediante machine learning se emplean métodos de clasificación sobre muestras de café tostado molido.

Se realizó en analisis FTIR de muestras de café tostado y molido vendido en supermercados de la ciudad de Neiva, luego se clasificaron las muestras mediante tecnicas de machine learning supervisado.

DESCRIPCIÓN DEL ALGORITMO "main.m":

El algoritmo de clasificación se realizó mediante el IDE MATLAB, primero, se obtuvieron los datos de las muestras arrojadas por el FTIR en archivos “.csv”, los cuales se adecuaron eliminando información irrelevante y se nombraron de acuerdo a la muestra y el número de muestra de cada marca seleccionada, para que fuera más fácil manipular los archivos “.csv” en el algoritmo, cada archivo contiene dos columnas, la primera columna corresponde a los datos de longitud de onda denominada “XLabelWavenumber” y la segunda columna corresponde a los datos de absorbancia de la muestra denominada “YLabelAbsorbance”.
Se crea un almacén de datos y se guarda en una variable con el fin de recopilar todos los archivos cuya extensión sea “.csv”, esto con el fin de agrupar los datos y más adelante poderlos manipular, mediante un ciclo iterativo, se obtienen los datos de absorbancia de las muestras para cada uno de los compuestos seleccionados, dichos datos son los que se utilizan para el entrenamiento de los métodos de clasificación.
Se llama la función que calcula las diferentes medidas estadísticas seleccionadas, los argumentos de entrada de la función son los datos de absorbancia de cada muestra, dichas medidas estadísticas se utilizaron como predictores para entrenar los modelos de clasificación.
Se crea un archivo “.csv” el cual corresponde a la clasificación manual que se le asignó a las muestras, dicho archivo se guarda en una variable de tipo categórica.
Se realizaron dos clasificaciones, la primera corresponde el nivel de cafeína de las muestras (alto o bajo) y la segunda a el tipo de café (instantáneo o tostado molido), se obtienen dichas clasificaciones en variables independientes, luego se declaran dos variables correspondientes a el tipo de clasificación, en cada una se guarda la tabla de medidas estadísticas y se le agrega en su última columna la clasificación manual correspondiente.
Se realiza la partición de los datos, seleccionando el 80% de los datos para entrenamiento y el 20% para prueba o testeo, dichos datos de guardan en variables disponibles en el “Workspace” de MATLAB, se procede a entrenar los modelos mediante le aplicación “Clasification Learner”, para lo cual se ingresan los datos de entrenamiento y se ejecutan todos los tipos de clasificadores, esto con el fin de determinar qué tipo de clasificador tuvo un porcentaje más alto de exactitud, por último, mediante los datos de testeo se analiza el desempeño de los diferentes modelos de clasificación.

Diagrama de flujo:

![image](https://github.com/Raken09/tesisDeGradoMachineLearning/assets/71042961/67179629-f5c0-4365-b332-04047cd00106)

ANALISÍS ESTADÍSTICO:
El análisis estadístico se realizó en MATLAB mediante el desarrollo de una función que se nombró “medidasEstadisticas”, la cual se encarga de aplicar las diferentes medidas estadísticas seleccionadas a los datos de absorbancia de todas las muestras, en cada uno de los compuestos seleccionados, las medidas estadísticas utilizadas fueron mínimo, máximo, media, mediana, desviación estándar, desviación media absoluta, percentil 25 y 75, rango inter cuantil, y curtosis, cada medida estadística se aplicó a los datos mediante funciones propias de Matlab, a las cuales como parámetro de entrada se ingresaron los datos de las gráficas y como salida se obtiene dicha medida estadística los valores de las medidas estadísticas se guardan en una variable de tipo tabular, dichos valores se utilizaron para entrenar los diferentes modelos de clasificación.

RESULTADOS:

Primero se observan los resultados de entrenamiento de la clasificación del nivel de cafeína (alto o bajo).

![image](https://github.com/Raken09/tesisDeGradoMachineLearning/assets/71042961/1ab9fe51-7123-4454-ba85-ccdab81f42ce)

Ahora se observan los resultados del entrenamiento de la clasificación por tipo de café (instantáneo o tostado molido).

![image](https://github.com/Raken09/tesisDeGradoMachineLearning/assets/71042961/0164a26b-0719-4b55-ad03-8b1cf7966623)
