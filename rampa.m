filename = 'rampalab1.txt';
data = readmatrix(filename);

% Número total de columnas
ncols = size(data, 2);

% Índice donde empieza la bajada
idx_bajada = 198;

figure;
hold on;
grid on;

% Recorrer los grupos de 3 columnas: tiempo, voltaje, rpm
for i = 1:3:ncols
    voltaje = data(:, i+1);
    rpm = data(:, i+2);

    % Subida y bajada
    plot(voltaje(1:idx_bajada-1), rpm(1:idx_bajada-1), 'b-o', 'LineWidth', 1.2, 'MarkerSize', 4);
    plot(voltaje(idx_bajada:end), rpm(idx_bajada:end), 'r-o', 'LineWidth', 1.2, 'MarkerSize', 4);
end

xlabel('Voltaje [V]');
ylabel('Velocidad [rpm]');
title('Curvas de velocidad del motor (subida y bajada)');
legend('Subida', 'Bajada', 'Location', 'best');
