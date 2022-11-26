function [kp,ki,kd]=  neural_network(consg, err)
    epochs = 1000;
    learningRate = 0.3;
    w1=1;
    w2=1;
    w3=1;
    w4=1;
    for i=0:epochs
        [a1 , z1 ,a2,z2,a3,z3] = forward(err,w2,w3,w4)
        %w2,a1,z0,z1,z2,y
        [theata1,theata2,theata3,theata4 ]= backProbagation(w2,a1,z1,z2,z3,consg);
        w1= w1-learningRate*(1/length(err))*theata1(1)
        w2= w2-learningRate*(1/length(err))*theata2
        w3= w3-learningRate*(1/length(err))*theata3
        w4 = w4- learningRate*(1/length(err))*theata4(1)
    end 
    kp=z1(2)-z1(1)
    ki=z2(2)-z2(1)
    kd=z3(2)-z3(1)


end
 

