data = readtable('0000MC_1.csv');

x = data.XLabelWavenumber;
y = data.YLabelAbsorbance;
figure
plot(-x,y)