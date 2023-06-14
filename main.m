% Se crea un almacen de datos con todos los archivos .csv
ds_graficas = datastore("*.csv");

numeroDeArchivos = length(ds_graficas.Files); % Variable que guarda la catidad de archivos

% Arreglo de celdas para los diferentes compuestos
datosAbsorbanciaAgua = {};
datoscasAbsorbanciaCafeinaLipidos = {};
datoscasAbsorbanciann = {};
datosAbsorbanciann2 = {};
datosAbsorbanciaLipido = {};
datosAbsorbanciaCafeina = {};
datosAbsorbanciaTrigonelina = {};
datosAbsorbanciaACG = {};
datosAbsorbanciaPolisacaridos = {};
datosAbsorbanciaAQuinico = {};
datosAbsorbanciaCarbohidratos = {};
%%
for i=1:1:numeroDeArchivos
    % Con la función "read" se obtiene el primer archivo del almacen de
    % datos, en en el siguiente ciclo se obtiene el segundo y asi
    % sucesivamente
    grafica = read(ds_graficas);
    
    % Se obtienen los datos del eje Y segun el compuesto
    ejeYaAbsorbanciaAgua = grafica.YLabelAbsorbance(606:807);
    ejeYaAbsorbanciaCafeinaLipidos = grafica.YLabelAbsorbance(552:605);
    ejeYaAbsorbanciann = grafica.YLabelAbsorbance(404:552);
    ejeYaAbsorbanciann2 = grafica.YLabelAbsorbance(297:405);
    ejeYaAbsorbanciaLipido = grafica.YLabelAbsorbance(278:287);
    ejeYaAbsorbanciaCafeina = grafica.YLabelAbsorbance(257:278);
    ejeYaAbsorbanciaTrigonelina = grafica.YLabelAbsorbance(176:257);
    ejeYaAbsorbanciaACG = grafica.YLabelAbsorbance(149:176);
    ejeYaAbsorbanciaPolisacaridos = grafica.YLabelAbsorbance(128:149);
    ejeYaAbsorbanciaAQuinico = grafica.YLabelAbsorbance(69:128);
    ejeYaAbsorbanciaCarbohidratos = grafica.YLabelAbsorbance(1:69);
    
    % La función reshape cambia el tamaño y la forma de un arreglo, se cambia
    % de columna a fila
    ejeYaAbsorbanciaAgua = reshape(ejeYaAbsorbanciaAgua,[1,202]);
    ejeYaAbsorbanciaCafeinaLipidos = reshape(ejeYaAbsorbanciaCafeinaLipidos,[1,54]);
    ejeYaAbsorbanciann = reshape(ejeYaAbsorbanciann,[1,149]);
    ejeYaAbsorbanciann2 = reshape(ejeYaAbsorbanciann2,[1,109]);
    ejeYaAbsorbanciaLipido = reshape(ejeYaAbsorbanciaLipido,[1,10]);
    ejeYaAbsorbanciaCafeina = reshape(ejeYaAbsorbanciaCafeina,[1,22]);
    ejeYaAbsorbanciaTrigonelina = reshape(ejeYaAbsorbanciaTrigonelina,[1,82]);
    ejeYaAbsorbanciaACG = reshape(ejeYaAbsorbanciaACG,[1,28]);
    ejeYaAbsorbanciaPolisacaridos = reshape(ejeYaAbsorbanciaPolisacaridos,[1,22]);
    ejeYaAbsorbanciaAQuinico = reshape(ejeYaAbsorbanciaAQuinico,[1,60]);
    ejeYaAbsorbanciaCarbohidratos = reshape(ejeYaAbsorbanciaCarbohidratos,[1,69]);
   
     
    % Se agrega de manera iterativa los valores correspondientes a cada
    % arreglo de compuestos.
    datosAbsorbanciaAgua{i, 1} = ejeYaAbsorbanciaAgua;
    datosAbsorbanciaCafeinaLipidos{i, 1} = ejeYaAbsorbanciaCafeinaLipidos;
    datosAbsorbanciann{i, 1} = ejeYaAbsorbanciann;
    datosAbsorbanciann2{i, 1} = ejeYaAbsorbanciann2;
    datosAbsorbanciaLipido{i, 1} = ejeYaAbsorbanciaLipido;
    datosAbsorbanciaCafeina{i, 1} = ejeYaAbsorbanciaCafeina;
    datosAbsorbanciaTrigonelina{i, 1} = ejeYaAbsorbanciaTrigonelina;
    datosAbsorbanciaACG{i, 1} = ejeYaAbsorbanciaACG;
    datosAbsorbanciaPolisacaridos{i, 1} = ejeYaAbsorbanciaPolisacaridos;
    datosAbsorbanciaAQuinico{i, 1} = ejeYaAbsorbanciaAQuinico;
    datosAbsorbanciaCarbohidratos{i, 1} = ejeYaAbsorbanciaCarbohidratos;

end
%%

% Se llama la función que calcula las medidas estadisticas y las guarda en
% una tabla
tablaDatosEstadisticos = medidasEstadisticas(datosAbsorbanciaAgua, datosAbsorbanciaCafeinaLipidos, ...
   datosAbsorbanciann, datosAbsorbanciann2, datosAbsorbanciaLipido, datosAbsorbanciaCafeina, ...
   datosAbsorbanciaTrigonelina, datosAbsorbanciaACG, datosAbsorbanciaPolisacaridos, datosAbsorbanciaAQuinico, ...
   datosAbsorbanciaCarbohidratos);

% Se obtiene la clasificación de cafeina (Alto - Bajo)
clasificacionCafeina = readcell('clasificacion.csv','Range','B2:B61');
clasificacionCafeina = categorical(clasificacionCafeina);

% Se obtiene la clasificación del tipo de cafe (Instantaneo - Tostado molido)
clasificacionTipoCafe = readcell('clasificacion.csv','Range','C2:C61');
clasificacionTipoCafe = categorical(clasificacionTipoCafe);

% Se crea una tabla que contiene predictores y clasificación de cada
% muestra
tablaCafeina = tablaDatosEstadisticos;
tablaCafeina.class = clasificacionCafeina;

tablaTipoCafe = tablaDatosEstadisticos;
tablaTipoCafe.class = clasificacionTipoCafe;

%Se comienza a realizar el entrenamiento
n = length(tablaCafeina.class);
particionDeDatos = cvpartition(n,"Holdout",0.2);
%save('particionDeDatos')
%%
% Entrenamiento nivel de cafeina
idEntrenamiento = training(particionDeDatos);
datosEntrenamientoCafeina = tablaCafeina(idEntrenamiento,:);
fprintf("Datos de entrenamiento\n")
summary(datosEntrenamientoCafeina.class)
%%
% Entrenamiento tipo de cafe
idEntrenamiento = training(particionDeDatos);
datosEntrenamientoTipoCafe = tablaTipoCafe(idEntrenamiento,:);
fprintf("Datos de entrenamiento\n")
summary(datosEntrenamientoTipoCafe.class)
%%
% Testeo nivel de cafeina
idTest = test(particionDeDatos);
datosTestCafeina = tablaCafeina(idTest,:);
fprintf("Datos de prueba\n")
summary(datosTestCafeina.class) 
%%
% Testeo tipo de cafe
idTest = test(particionDeDatos);
datosTestTipoCafe = tablaTipoCafe(idTest,:);
fprintf("Datos de prueba\n")
summary(datosTestTipoCafe.class)

% Se guardan todas las variables del workspace
save('variablesEntrenamiento')