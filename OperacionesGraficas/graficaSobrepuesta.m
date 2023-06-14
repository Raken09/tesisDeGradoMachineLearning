
% Se leen los archivos
colcafe = readtable('0000MC_1.csv');
y1 = colcafe.YLabelAbsorbance;

x = colcafe.XLabelWavenumber;

matiz = readtable('0000MM_1.csv');
y2 = matiz.YLabelAbsorbance;

ricafe = readtable('0000MR_1.csv');
y3 = ricafe.YLabelAbsorbance;

tostao = readtable('0000MT_1.csv');
y4 = tostao.YLabelAbsorbance;

aguilaRoja = readtable('000MAR_1.csv');
y5 = aguilaRoja.YLabelAbsorbance;

caffeDuclet = readtable('000MCD_1.csv');
y6 = caffeDuclet.YLabelAbsorbance;

lukafeClasico = readtable('000MLC_1.csv');
y7 = lukafeClasico.YLabelAbsorbance;

nescafeDolca = readtable('000MND_1.csv');
y8 = nescafeDolca.YLabelAbsorbance;

omaTradicional = readtable('000MOT_1.csv');
y9 = omaTradicional.YLabelAbsorbance;

selloRojo = readtable('000MSR_1.csv');
y10 = selloRojo.YLabelAbsorbance;

cafeConsumoCesurcafe = readtable('0MTCCC_1.csv');
y11 = cafeConsumoCesurcafe.YLabelAbsorbance;

juanValdez = readtable('MJVSPL_1.csv');
y12 = juanValdez.YLabelAbsorbance;

plot(-x,y1)
axis([-4000 -630 0 0.35])
title('FTIR muestras de café')
xlabel('Longitud de onda cm^-1')
ylabel('Absorbancia')

hold on

plot(-x,y2)
plot(-x,y3)
plot(-x,y4)
plot(-x,y5)
plot(-x,y6)
plot(-x,y7)
plot(-x,y8)
plot(-x,y9)
plot(-x,y10)
plot(-x,y11)
plot(-x,y12)

legend({'Muestra A', 'Muestra B', 'Muestra C', 'Muestra D', 'Muestra E', 'Muestra F', 'Muestra G', 'Muestra H',...
    'Muestra I', 'Muestra J', 'Muestra K', 'Muestra L' })

