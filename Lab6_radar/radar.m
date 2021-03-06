%Utworzenie i konfiguracja kana�u
canch = canChannel('Vector','CANcardXL 1',2);
configBusSpeed(canch, 500000);
%Filtracja wiadomo�ci
filterAllowOnly(canch, [hex2dec('600'), hex2dec('63F')],'Standard');
%Nawi�zanie komunikacji
start(canch);
%Pod��czenie bazy danych
db = canDatabase('Radar_2.dbc');
canch.Database = db;
%Wybudzenie radaru
msgToSend = canMessage(db, 'CON_VEH');
msgToSend.Signals.ST_CON_VEH = 10;
transmit(canch, msgToSend);
%Zaznaczanie wykry�
figure;
pause(0.1);
while(1)
   
    polarplot(0,0, 'go');
    hold on;
    msgIn=receive(canch, 64);
    for i = 1 : length(msgIn)
        distance = msgIn(i).Signals.CAN_TX_DETECT_RANGE;
        angle = msgIn(i).Signals.CAN_TX_DETECT_ANGLE; 
        polarplot(deg2rad(angle), distance, 'bo');
    end
    pause(0.3);
    hold off;
end

    