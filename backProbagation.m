function [theata2,theata4,theata3 ]= backProbagation(w2,a1,z0,z1,z2,y)
        theata2 = z2-y;
        theata3 = z1.'*theata2;
        theata1 = (theata2.*w2.')*sigmoidGradient(a1);
        theata4 = z0.'*theata1;

end

