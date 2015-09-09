%import data from 2007-2-1 to 2007-2-2 to workspace
% the 3 sub_metering are the  5th, 6th and 7th column of data
Sub_metering_1=data(:,5);
Sub_metering_2=data(:,6);
Sub_metering_3=data(:,7);
x=0:24*60*2-1;
figure;
plot(x,Sub_metering_1,'k',x,Sub_metering_2,'r',x,Sub_metering_3,'b');
legend('Sub\_metering\_1','Sub\_metering\_2','Sub\_metering\_3');
set(gca,'XTick',0:24*60:24*60*2);
set(gca,'XTickLabel',{'Thu','Fri','Sat'});
set(gca,'YTick',0:10:30);
ylabel('Energy sub metering');