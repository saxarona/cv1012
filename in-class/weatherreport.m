% Sax
% L01510511

%step 0: clear figure
clf();
%step 1: read weather data
weather = readtable('weather.csv');
% step 2: plot wind
plot(weather.wind, 'db:')
hold on
% step 3: plot temp
plot(weather.temperature, 'r-+', 'MarkerSize', 3, 'LineWidth', 2)

n = length(weather.temperature);
avg_temp = sum(weather.temperature) / n;

plot(avg_temp * ones(1,n), 'k--', 'LineWidth', 2)

%step 4: adjust properties
legend('Viento', 'Temperatura', 'Temperatura promedio')
ylabel('Temp / Velocidad (°C / km/h)')
xlabel('No. de la medición')
title('Datos del clima para Monterrey')
ylim([0, 38])
xlim([0, 38])
%step 5: save figure
saveas(gcf(), 'weather01', 'jpg')
%clf()

%plot(weather.temperature, weather.wind, '.b')