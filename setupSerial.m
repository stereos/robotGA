function [s,flag] = setupSerial(comPort)
% Initialize the serial port communication between Arduino and MATLAB
% We ensure that the arduino is also communicating with MATLAB at this
% time, A predefined code of arduino acknowledges this.
% If setup then the value of setup is returned as 1, else 0.
flag = 1;

s = serial(comPort);
set(s, 'DataBits', 8);
set(s, 'StopBits', 1);
set(s, 'BaudRate', 9600);
set(s, 'Parity', 'none');
fopen(s);

% a='b';
% while(a ~= 'a')
%     a = fread(s,1,'uchar');
% end
% if (a == 'a')
%     disp('serial read');
% end

% fprintf(s, '%c', 'a');
% mbox = msgbox('Ready to go!');
% uiwait(mbox);
% fscanf(s, '%u');
end