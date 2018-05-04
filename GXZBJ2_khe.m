function GXZBJ2_khe()
   
    tGQRA = zeros(1,10);
    tGQRB = zeros(1,10);
    tGQRC = zeros(1,10);
    x = linspace(0,200,length(tGQRA));
    tHQR = zeros(1,10);
    tHQR2 = zeros(1,10);
    tHQR3 = zeros(1,10);
    tFGQRA = zeros(1,10);
    tFGQRB = zeros(1,10);
    tFGQRC = zeros(1,10);
    
    tHQRA = zeros(1,10);
    tHQRB = zeros(1,10);
    tHQRC = zeros(1,10);
    
    tFHQRA = zeros(1,10);
    tFHQRB = zeros(1,10);
    tFHQRC = zeros(1,10);
    
    for k= 1:10
        A = randi(k*20,k*20);
        B = rand(k*20);
        C = randi([1,1000], k*20,k*20);
        tic; GQR(A);
        elapsedTime = toc
        tGQRA(k) = elapsedTime;
        tic; GQR(B);
        elapsedTime = toc
        tGQRB(k) = elapsedTime;
        tic; GQR(C);
        elapsedTime = toc
        tGQRC(k) = elapsedTime;
       tic; qr(A);
       elapsedTime = toc;
       tHQR(k) = elapsedTime;
       tic; qr(B);
       elapsedTime = toc;
       tHQR2(k) = elapsedTime;
       tic; qr(C);
       elapsedTime = toc;
       tHQR3(k) = elapsedTime;
        
        tic; HQR(A);
        elapsedTime = toc;
        tHQRA(k) = elapsedTime;
        
        tic; HQR(B);
        elapsedTime = toc;
        tHQRB(k) = elapsedTime;
        tic; HQR(C);
        elapsedTime = toc;
        tHQRC(k) = elapsedTime;
       % Frobenius norma
       [Q,R] = GQR(A);
        D = Q*R;
       tFGQRA(k) = norm(D-C, 'fro');
        [Q,R] = GQR(B);
        D = Q*R;
        tFGQRB(k) = norm(D-B, 'fro');
        [Q,R] = GQR(C);
       D = Q*R;
       tFGQRC(k) = norm(D-C, 'fro');
       
       [Q,R] = HQR(A);
        D = Q*R;
       tFHQRA(k) = norm(D-C, 'fro');
        [Q,R] = HQR(B);
        D = Q*R;
        tFHQRB(k) = norm(D-B, 'fro');
        [Q,R] = HQR(C);
       D = Q*R;
       tFHQRC(k) = norm(D-C, 'fro');
       
        
   end
    plot(x,tGQRA, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQR, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs Built in Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','Built in QR decomp');
    figure(2);
    
    plot(x,tFGQRA, 'Color', [1, 0.5,0]);
    ylabel('Accuracy'); 
    xlabel('Size of matrix (n*n)');
    figure(3);
    plot(x,tFGQRB, 'Color', [1, 0,1]);
    figure(4);
    plot(x,tFGQRC, 'Color', [1, 1,0]);
    
    figure(5);
    plot(x,tGQR, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQRA, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs HouseHolder Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','HQR');
    
     figure(6);
    plot(x,tGQR, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQRB, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs HouseHolder Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','HQR');
    
    
     figure(7);
    plot(x,tGQR, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQRC, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs HouseHolder Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','HQR');
    
    figure(8);
    
    plot(x,tFHQRA, 'Color', [1, 0.5,0]);
    ylabel('Accuracy'); 
    xlabel('Size of matrix (n*n)');
    
    figure(9);
    
    plot(x,tFHQRB, 'Color', [1, 0.5,0]);
    ylabel('Accuracy'); 
    xlabel('Size of matrix (n*n)');
    
    figure(10);
    
    plot(x,tFHQRC, 'Color', [1, 0.5,0]);
    ylabel('Accuracy'); 
    xlabel('Size of matrix (n*n)');
    
    figure(11);
     plot(x,tGQRB, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQR2, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs Built in Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','Built in QR decomp');
    
    figure(12);
     plot(x,tGQRC, 'Color', [1, 0,0]); 
    hold on;
    plot(x,tHQR2, 'Color', [0, 1,0]);
    title('Givens QR Decompositin vs Built in Orthogonal-triangular decomposition');
    xlabel('Size of matrix (n*n)');
    ylabel('Running time in sec'); 
    legend('GQR','Built in QR decomp');
end