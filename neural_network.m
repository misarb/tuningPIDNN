function [kp,ki,kd]=  neural_network(consg, err)
     epochs = 10000;
    learningRate = 0.0001;
    w1=1;
    w2=1;
    w3=1;
    w4=1;
    for i=0:epochs
        [a1 , z1 ,a2,z2,a3,z3] = forward(err,w1,w2,w3);
        %w2,a1,z0,z1,z2,y
        [theata1,theata2,theata3,theata4 ]= backProbagation(w2,a1,z1,z2,z3,consg);
        %w1= w1-learningRate*(1/length(err))*theata1
        w2= w2-learningRate*(1/length(err))*theata2;
       % w3= w3-learningRate*(1/length(err))*theata3
        w4= w4-learningRate*(1/length(err))*theata4;  
    end 
    kp=z1(1)
    ki=z2(1)
    kd=z3(1)



end
 
