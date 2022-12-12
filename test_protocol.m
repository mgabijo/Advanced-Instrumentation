function [valor,flag] = test_protocol(t,c,r,o,v)
    % t - type - META (1) or TEDS (0)
    % c - channel
    % r - read/write
    % o - offset
    % v - value
    % Pedir valores do canal 1 test_protocol(0, 1, 1, 0, 1)


    stim = serialport("/dev/ttyACM0", 9600);
    suc = [];
    teds = [];
    Mt = [0 0 1 2 0 2 1 o]; % For metateds
    Tt = [0 c 1 2 0 2 3 o];
    Tvr = [0 c 3 1 0 1 o];
    Tvw = [0 c 3 2 0 2 o v];
    if (t==1)
        if (c==0)
            write(stim,Mt, "uint8");
            suc = read(stim,3, "uint8");
            if (suc(1) ==0)
                display("Erro")
                flag=0;
            else
                teds = read(stim,suc(3), "uint8");
                display(teds);
                flag=1;
            end
        
        elseif (c<=3)
            write(stim,Tt, "uint8");
            suc = read(stim,3, "uint8");
           if (suc(1) ==0)
                display("Erro")
                flag=0;
           else
                teds = read(stim,suc(3), "uint8");
                display(teds);
                flag=1;
           end
        else
            display("Erro");
            flag = 0;
        end
    elseif (t==0)
        if ((r==1) && (c<=3) && (v ==0))
            write(stim,Tvr, "uint8");
            suc = read(stim,3, "uint8");
            if (suc(1) ==0)
                display("Erro")
                flag=0;
           else
                teds = read(stim,suc(3), "uint8");
                flag=1;
                value=teds(1)
           end
        
        elseif ((r==0) && (c==3))
            write(stim,Tvw, "uint8");
            suc = read(stim,3, "uint8");
            if (suc(1) ==0)
                display("Erro")
                flag=0;
            else
                display(suc);
                flag = 1;
            end
        else
            display("Erro");
            flag = 0;
        end
    else
        display("Erro");
        flag = 0;
    end
    flag
end
