Losses=csvread('output.csv');
AccuracyYosemite=csvread('accuracyyosemite.csv');
AccuracyNotreDame=csvread('accuracynotredame.csv');
epoch = Losses(:, 1);
loss = Losses(:, 2);
plot(epoch, loss)

title('CNN1 with batch size = 1024')

hold on

epoch = AccuracyNotreDame(:, 1);
accuracynotredame = AccuracyNotreDame(:, 2);
plot(epoch, accuracynotredame)

epoch = AccuracyYosemite(:, 1);
accuracyyosemite = AccuracyYosemite(:, 2);
plot(epoch, accuracyyosemite)

legend({'Loss', 'Accuracy Notredame', 'Accuracy Yosemite'},'Location','southwest')

hold off
