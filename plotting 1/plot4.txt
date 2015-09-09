%import data from 2007-2-1 to 2007-2-2 to workspace
% global active power is the 1st column of data
% voltage is the 3rd column of data
% the 3 sub_metering are the  5th, 6th and 7th column of data
% global reactive power is the 2nd column of data
figure;
subplot(2,2,1);
Global_active_power=data(:,1);
plot(Global_active_power,'k');
set(gca,'XTick',0:24*60:24*60*2);
set(gca,'XTickLabel',{'Thu','Fri','Sat'});
set(gca,'YTick',0:2:6);
ylabel('Global Active Power');
subplot(2,2,2);
voltage=data(:,3);
plot(voltage,'k');
set(gca,'XTick',0:24*60:24*60*2);
set(gca,'XTickLabel',{'Thu','Fri','Sat'});
xlabel('datetime');
set(gca,'YTick',234:4:246);
ylabel('Voltage');
subplot(2,2,3);
Sub_metering_1=data(:,5);
Sub_metering_2=data(:,6);
Sub_metering_3=data(:,7);
x=0:24*60*2-1;
plot(x,Sub_metering_1,'k',x,Sub_metering_2,'r',x,Sub_metering_3,'b');
h=legend('Sub\_metering\_1','Sub\_metering\_2','Sub\_metering\_3');
set(gca,'XTick',0:24*60:24*60*2);
set(gca,'XTickLabel',{'Thu','Fri','Sat'});
set(gca,'YTick',0:10:30);
ylabel('Energy sub metering');
subplot(2,2,4);
Global_reactive_power=data(:,2);
plot(Global_reactive_power,'k');
set(gca,'XTick',0:24*60:24*60*2);
set(gca,'XTickLabel',{'Thu','Fri','Sat'});
xlabel('datetime');
set(gca,'YTick',0.0:0.1:0.5);
ylabel('Global\_reactive\_power');