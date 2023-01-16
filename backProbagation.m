function [theata1,theata2,theata3,theata4 ]= backProbagation(w2,w3,w4,a4,z3,z2,z1,consg)
        theata4 = a4 - consg;
        theata3 = w4' * theata4 .* sigmoidGradient(z3);
        theata2 = w3' * theata3 .* sigmoidGradient(z2);
        theata1 = w2' * theata2 .* sigmoidGradient(z1);
end
