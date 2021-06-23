function res = elements(BigPole, Ecc, PlaneTilt, Anomaly, w, Omega, miu,t)
      PlaneTilt = PlaneTilt*pi/180;
     n = sqrt(1/BigPole^3);
     to = ((w - Anomaly)/n)*pi/180;
    
    
     gama = 1 + miu;
   EL=miu*sqrt(gama*BigPole) 
   GE=EL*sqrt(1-Ecc^2)
   TITADEBELA=GE*cos(PlaneTilt)
   l = n*(t*2*pi - to)
   g = (w - Omega)*pi/180
   tita = Omega*pi/180
   H=-miu*gama/(2*BigPole)
   
   P11=sqrt(BigPole)
   P12=(EL-GE)/(miu*sqrt(gama))
   P13=(GE-TITADEBELA)/(miu*sqrt(gama))
   P14=Anomaly*pi/180
   P15=-g-tita
   P16=-tita
   
   P21=P11
   P22=sqrt(2*(EL-GE))*cos(g+tita)
   P23=sqrt(2*(GE-TITADEBELA))*cos(tita)
   P24=P14
   P25=-sqrt(2*(EL-GE))*sin(g+tita)
   P26=-sqrt(2*(GE-TITADEBELA))*sin(tita)
  
end
