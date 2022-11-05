function theata2,theata4,theata3 = backProbagation(w2,a1,z0,z1,z2,y)
        theata2 = z2-y;
        theata3 = z1.'*theata2;
        theata1 = xxx*sigmoidGradient(a1);
        theata4 = z0.'*theata1;

end


def backProbagation(self,w2,a1,z0,z1,z2,y):
        theata2 = z2 - y
        theata3 = np.matmul(z1.T,theata2)
        theata1 = (theata2.dot(w2[1:,:].T))*self.derivationSegmoid(a1)
        theata4 = np.matmul(z0.T,theata1)

        return theata2 , theata4,theata3