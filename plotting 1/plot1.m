%import data from 2007-2-1 to 2007-2-2 to workspace
% global active power is the first column of data
Global_active_power=data(:,1);
figure;
hist(Global_active_power,16);
h = findobj(gca,'Type','patch');
set(h,'FaceColor','r');
title('Global Active Power');
set(gca,'XTick',0:2:6);
xlabel('Global Active Power (kilowatts)');
set(gca,'YTick',0:200:1200);
ylabel('Frequency');