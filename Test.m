function Test()
   
    tGQR = zeros(1,10);
    x = linspace(0,200,length(tGQR));
    tHQR = zeros(1,10);
   
    for k= 1:10
        A = randi(k*20,k*20);
        B = rand(k*20);
        C = randi([1,1000], k*20,k*20);
        tic; GQR(A);
        elapsedTime = toc
        tGQR(k) = elapsedTime;
        tic; qr(A);
        elapsedTime = toc;
        tHQR(k) = elapsedTime;
    end
    plot(x,tGQR, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQR, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs Built in Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','Built in QR decomp');
    
    %plot(x,tGQR, 'Color', [1, 1,0]); ennek új plotnak kéne lennie
end