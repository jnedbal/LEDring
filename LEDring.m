center = [177.8, 76.2];
radius = 187.8 - center(1);
diodes = 4 * 7;
angle0 = 30 / 180 * pi;
angle = angle0 - (0 : (diodes - 1)) * 2 * pi / diodes;
X = cos(angle) * radius + center(1);
Y = -sin(angle) * radius + center(2);
angle = angle / pi * 180 + repmat(mod(0 : (diodes / 4 - 1), 2) * 180, 1, 4);
angle = round(angle, 1);
[1 : diodes; X; Y; angle]'