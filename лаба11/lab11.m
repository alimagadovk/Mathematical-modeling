%%
clc
clear
close all
N = 7;
M = 7;
predp = zeros(N,M);
for i = 1:N - 1 
    for j = 1:M - i
        predp(N - i + 1,j) = floor((rand - 0.5) * 100);
    end
end
predp
Sn = sum(predp');
Sn = Sn(2:end);
S = sum(abs(Sn))
for i = 1:N - 1
    for j = 1:M - 1
        predp2(i,j) = (Sn(i)*abs(Sn(j)) - Sn(j)*abs(Sn(i)))/S;
        %predp3(i,j) = predp2(i,j);
        if (N - i >= M - j)
            predp2(i,j) = 0;
        end
    end
end
predp2
%predp3
Sn = sum(predp2');
Sn = Sn(2:end);
S = sum(abs(Sn))
%%
clc
clear
close all
N = 17;
M = 17;
predp = zeros(N,M);
for i = 1:N - 1 
    for j = 1:M - i
        predp(N - i + 1,j) = floor((rand - 0.5) * 100);
    end
end
figure
bar3( predp, 1)
%axis square
%predp
predp_new = predp;
for j = 1:M
    for i = 1:N
        predp_new(j + i:end,j) = sort(predp_new(j + i:end,j));
    end
end
Sn = sum(predp');
Sn = Sn(2:end);
S = sum(abs(Sn))
for i = 1:N - 1
    for j = 1:M - 1
        predp2(i,j) = (Sn(i)*abs(Sn(j)) - Sn(j)*abs(Sn(i)))/S;
        %predp3(i,j) = predp2(i,j);
        if (N - i >= M - j)
            predp2(i,j) = 0;
        end
    end
end
%predp2
%predp3
Sn = sum(predp2');
Sn = Sn(2:end);
S = sum(abs(Sn))
figure
bar3( predp2, 1)
predp = predp_new;

Sn = sum(predp);
Sn = Sn(2:end);
S = sum(abs(Sn));
for i = 1:N - 1
    for j = 1:M - 1
        predp3(i,j) = (Sn(i)*abs(Sn(j)) - Sn(j)*abs(Sn(i)))/S;
        %predp3(i,j) = predp2(i,j);
        if (N - i >= M - j)
            predp3(i,j) = 0;
        end
    end
end
%predp2
Sn = sum(predp3');
Sn = Sn(2:end);
S = sum(abs(Sn))
figure
bar3( predp3, 1)