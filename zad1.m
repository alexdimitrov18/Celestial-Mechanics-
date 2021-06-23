function res = zad1(BigPole, Ecc, PlaneTilt, Anomaly, w, Omega, miu, t)
    tita = Omega*pi/180;
    g = (w - Omega)*pi/180;
    PlaneTilt = PlaneTilt*pi/180;
 
    Tita = [ cos(tita) , -sin(tita), 0 ;
             sin(tita) ,  cos(tita), 0 ;
                 0     ,      0    , 1  ] ;
             
             
       I = [ cos(PlaneTilt) , 0  , -sin(PlaneTilt) ;
               0    , 1  ,    0    ;
             sin(PlaneTilt) , 0  ,  cos(PlaneTilt)  ] ; 
             
             
       G = [ cos(g) , -sin(g) , 0 ;
             sin(g) ,  cos(g) , 0 ;
               0    ,    0    , 1  ] ;
        
    Q = Tita*I*G;
    
    gama = 1 + miu;
    n = sqrt(gama/BigPole^3);
    to = ((w - Anomaly)/n)*pi/180;
    l = n*(-t*2*pi - to);
    u = l + Ecc*sin(l + Ecc*sin(l + Ecc*sin(l)));
    
    
    r = Q*BigPole*[cos(u)-Ecc ; sin(u)*sqrt(1-Ecc^2) ; 0 ]
    v = Q*[-sin(u);cos(u)*sqrt(1-Ecc^2);0]*BigPole*n/(1-Ecc*cos(u))
   disp(['|r|=',num2str(norm(r))])
   
   
   
end
