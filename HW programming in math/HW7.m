%% Q1

for t=0:3:24
    num_A=2^t;
    num_B=2^(2*t/3);
    subplot(1,2,1)
    plot(t,num_A,'-or')
    hold on
    plot(t,num_B,'-ob')
    xlabel('time')
    ylabel('number of bacteria')
    title('xy plot')
    legend('Medium A','Medium B','Location','northwest')

    subplot(1,2,2)
    semilogy(t,num_A,'-or')
    hold on
    semilogy(t,num_B,'-ob')
    xlabel('time')
    ylabel('number of bacteria')
    title('linear-log')
    legend('Medium A','Medium B','Location','northwest')
end
% The nubmer of bacteria in each media is significantly different

%% Q2

MTBFs=[2000 800 3000 5000];
MTBF=0;
for i=1:length(MTBFs)
    MTBF=MTBF+1/MTBFs(i);
end
MTBFsys=1/MTBF;
fprintf('MTBFsys=%f\n',MTBFsys)
