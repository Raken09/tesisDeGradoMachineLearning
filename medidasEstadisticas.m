function tablaDatosEstadisticos = medidasEstadisticas(grafAbsAgua, grafAbsCafeiLipi, grafAbsnn, grafAbsnn2, grafAbsLipi,...
    grafAbsCafei, grafAbsTrigon, grafAbsACG, grafAbsPolisac, grafAbsAcQin, grafAbsCarbo)

% Se delcara una variablle vacia de tipo tabla.
tablaDatosEstadisticos = table();

% Se calcula el maximo valor
tablaDatosEstadisticos.maximoAgua = cellfun(@max,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.maximoCafeinaLipidos = cellfun(@max,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.maximonn = cellfun(@max,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.maximonn2 = cellfun(@max,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.maximoLipido = cellfun(@max,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.maximoCafeina = cellfun(@max,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.maximoTrigonelina = cellfun(@max,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.maximoACG = cellfun(@max,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.maximoPolisacaridos = cellfun(@max,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.maximoAcidoQuinico = cellfun(@max,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.maximoCarbohidratos = cellfun(@max,grafAbsCarbo,'UniformOutput',true);

% Se calcula el minimo valor
tablaDatosEstadisticos.minimoAgua = cellfun(@min,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.minimoCafeinaLipidos = cellfun(@min,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.minimonn = cellfun(@min,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.minimonn2 = cellfun(@min,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.minimoLipido = cellfun(@min,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.minimoCafeina = cellfun(@min,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.minimoTrigonelina = cellfun(@min,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.minimoACG = cellfun(@min,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.minimoPolisacaridos = cellfun(@min,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.minimoAcidoQuinico = cellfun(@min,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.minimoCarbohidratos = cellfun(@min,grafAbsCarbo,'UniformOutput',true);

% Se calcula la media
tablaDatosEstadisticos.mediaAgua = cellfun(@mean,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.mediaCafeinaLipidos = cellfun(@mean,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.mediann = cellfun(@mean,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.mediann2 = cellfun(@mean,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.mediaLipido = cellfun(@mean,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.mediaCafeina = cellfun(@mean,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.mediaTrigonelina = cellfun(@mean,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.mediaACG = cellfun(@mean,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.mediaPolisacaridos = cellfun(@mean,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.mediaAcidoQuinico = cellfun(@mean,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.mediaCarbohidratos = cellfun(@mean,grafAbsCarbo,'UniformOutput',true);

% Se calcula la mediana
tablaDatosEstadisticos.medianaAgua = cellfun(@median,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.medianaCafeinaLipidos = cellfun(@median,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.medianann = cellfun(@median,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.medianann2 = cellfun(@median,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.medianaLipido = cellfun(@median,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.medianaCafeina = cellfun(@median,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.medianaTrigonelina = cellfun(@median,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.medianaACG = cellfun(@median,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.medianaPolisacaridos = cellfun(@median,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.medianaAcidoQuinico = cellfun(@median,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.medianaCarbohidratos = cellfun(@median,grafAbsCarbo,'UniformOutput',true);

% Se calcula la desviación estandar
tablaDatosEstadisticos.desviacionEstandarAgua = cellfun(@std,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarCafeinaLipidos = cellfun(@std,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarnn = cellfun(@std,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarnn2 = cellfun(@std,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarLipido = cellfun(@std,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarCafeina = cellfun(@std,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarTrigonelina = cellfun(@std,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarACG = cellfun(@std,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarPolisacaridos = cellfun(@std,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarAcidoQuinico = cellfun(@std,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.desviacionEstandarCarbohidratos = cellfun(@std,grafAbsCarbo,'UniformOutput',true);

% Se calcula la desviación media absoluta
tablaDatosEstadisticos.desviacionMediaAbsolutaAgua = cellfun(@mad,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaCafeinaLipidos = cellfun(@mad,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutann = cellfun(@mad,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutann2 = cellfun(@mad,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaLipido = cellfun(@mad,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaCafeina = cellfun(@mad,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaTrigonelina = cellfun(@mad,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaACG = cellfun(@mad,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaPolisacaridos = cellfun(@mad,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaAcidoQuinico = cellfun(@mad,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.desviacionMediaAbsolutaCarbohidratos = cellfun(@mad,grafAbsCarbo,'UniformOutput',true);

% Se calcula el percentil 25
tablaDatosEstadisticos.quantile25Agua = cellfun(@(x) quantile(x,0.25),grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.quantile25CafeinaLipidos = cellfun(@(x) quantile(x,0.25),grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.quantile25nn = cellfun(@(x) quantile(x,0.25),grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.quantile25nn2 = cellfun(@(x) quantile(x,0.25),grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.quantile25Lipido = cellfun(@(x) quantile(x,0.25),grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.quantile25Cafeina = cellfun(@(x) quantile(x,0.25),grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.quantile25Trigonelina = cellfun(@(x) quantile(x,0.25),grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.quantile25ACG = cellfun(@(x) quantile(x,0.25),grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.quantile25Polisacaridos = cellfun(@(x) quantile(x,0.25),grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.quantile25AcidoQuinico = cellfun(@(x) quantile(x,0.25),grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.quantile25Carbohidratos = cellfun(@(x) quantile(x,0.25),grafAbsCarbo,'UniformOutput',true);

% Se calcula el percentil 75
tablaDatosEstadisticos.quantile75Agua = cellfun(@(x) quantile(x,0.75),grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.quantile75CafeinaLipidos = cellfun(@(x) quantile(x,0.75),grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.quantile75nn = cellfun(@(x) quantile(x,0.75),grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.quantile75nn2 = cellfun(@(x) quantile(x,0.75),grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.quantile75Lipido = cellfun(@(x) quantile(x,0.75),grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.quantile75Cafeina = cellfun(@(x) quantile(x,0.75),grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.quantile75Trigonelina = cellfun(@(x) quantile(x,0.75),grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.quantile75ACG = cellfun(@(x) quantile(x,0.75),grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.quantile75Polisacaridos = cellfun(@(x) quantile(x,0.75),grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.quantile75AcidoQuinico = cellfun(@(x) quantile(x,0.75),grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.quantile75Carbohidratos = cellfun(@(x) quantile(x,0.75),grafAbsCarbo,'UniformOutput',true);

% Se calcula el rango intercuantilico
tablaDatosEstadisticos.signalIQRAgua = cellfun(@iqr,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRCafeinaLipidos = cellfun(@iqr,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRnn = cellfun(@iqr,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRnn2 = cellfun(@iqr,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRLipido = cellfun(@iqr,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRCafeina = cellfun(@iqr,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRTrigonelina = cellfun(@iqr,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRACG = cellfun(@iqr,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRPolisacaridos = cellfun(@iqr,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRAcidoQuinico = cellfun(@iqr,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.signalIQRCarbohidratos = cellfun(@iqr,grafAbsCarbo,'UniformOutput',true);

% Se calcula la asimetria
tablaDatosEstadisticos.asimetriaAgua = cellfun(@skewness,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaCafeinaLipidos = cellfun(@skewness,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.asimetriann = cellfun(@skewness,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.asimetriann2 = cellfun(@skewness,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaLipido = cellfun(@skewness,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaCafeina = cellfun(@skewness,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaTrigonelina = cellfun(@skewness,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaACG = cellfun(@skewness,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaPolisacaridos = cellfun(@skewness,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaAcidoQuinico = cellfun(@skewness,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.asimetriaCarbohidratos = cellfun(@skewness,grafAbsCarbo,'UniformOutput',true);

% Se calcula la curtosis
tablaDatosEstadisticos.curtosisAgua = cellfun(@kurtosis,grafAbsAgua,'UniformOutput',true);
tablaDatosEstadisticos.curtosisCafeinaLipidos = cellfun(@kurtosis,grafAbsCafeiLipi,'UniformOutput',true);
tablaDatosEstadisticos.curtosisnn = cellfun(@kurtosis,grafAbsnn,'UniformOutput',true);
tablaDatosEstadisticos.curtosisnn2 = cellfun(@kurtosis,grafAbsnn2,'UniformOutput',true);
tablaDatosEstadisticos.curtosisLipido = cellfun(@kurtosis,grafAbsLipi,'UniformOutput',true);
tablaDatosEstadisticos.curtosisCafeina = cellfun(@kurtosis,grafAbsCafei,'UniformOutput',true);
tablaDatosEstadisticos.curtosisTrigonelina = cellfun(@kurtosis,grafAbsTrigon,'UniformOutput',true);
tablaDatosEstadisticos.curtosisACG = cellfun(@kurtosis,grafAbsACG,'UniformOutput',true);
tablaDatosEstadisticos.curtosisPolisacaridos = cellfun(@kurtosis,grafAbsPolisac,'UniformOutput',true);
tablaDatosEstadisticos.curtosisAcidoQuinico = cellfun(@kurtosis,grafAbsAcQin,'UniformOutput',true);
tablaDatosEstadisticos.curtosisCarbohidratos = cellfun(@kurtosis,grafAbsCarbo,'UniformOutput',true);

end