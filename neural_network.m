
 def forward(self,err,w1,w2,w3):
    
        a1 = np.matmul(err,w1)
        z1 = self.segmoindFunction(a1)

        #Bias
        b = np.ones((len(z1),1))
        z1 = np.concatenate((b,z1),axis=1)
        ##
        a2 = np.matmul(z1,w2)
        z2 = self.segmoindFunction(a2)
        ##
        a3 = np.matmul(z2,w3)
        z3 = slef.segmoindFunction(a3)


       
        
        return a1 , z1 ,a2,z2,a3,z3
%%my algo
 

