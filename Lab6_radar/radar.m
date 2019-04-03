%utworzenie i konfiguracja kana³u
canch = canChannel('Vector','CANcardXL 1',2);
configBusSpeed(canch, 500000);

%filtracja wiadomoœci
filterAllowOnly(canch, [hex2dec('600'), hex2dec('63F')],'Standard');

%nawi¹zanie komunikacji
start(canch);

%pod³¹czenie bazy danych
db = canDatabase('Radar_2.dbc');
canch.Database = db;

%wybudzenie radaru
msgToSend = canMessage(db, 'CON_VEH');
msgToSend.Signals.ST_CON_VEH = 10;
transmit(canch, msgToSend);

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

    