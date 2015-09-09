%import data from 2007-2-1 to 2007-2-2 to workspace
% global active power is the first column of data
Global_active_power=data(:,1);
figure;
plot(Global_active_power,'k');
set(gca,'XTick',0:24*60:24*60*2);
set(gca,'XTickLabel',{'Thu','Fri','Sat'});
set(gca,'YTick',0:2:6);
ylabel('Global Active Power (kilowatts)');