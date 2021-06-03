m=1250;
mus=0.8;
sim=[];
sorat=[];
tt=[];
ttt=[];
T=0.2;
xaccident=-6;
yaccident= 14.6;
de=13;
sx=[];sy=[];vvx=[];vvy=[];%halate hay ghable as tadsadof
for v1=5:1:23
    for v2=5:1:23
        zaviye=atan(v1./v2);
        v3=0.5.*(v2./cos(zaviye));
        teta=zaviye;
            for i=1:0.2:7
                for j=1:0.2:7
            d=(v3.^2)./(2.*mus.*9.81);
            xf=i-(d.*sin(teta));
            yf=j+(d.*cos(teta));
            if xaccident-T<xf
                if xf<xaccident+T
                if yaccident-T<=yf
                    if yf<=yaccident+T
                if de-T<=d
                    if d<=de+T
                   sx=[sx i];
                   sy=[sy j];
                   vvx=[vvx v1];
                   vvy=[vvy v2];
                end
                    end
                    end
                end
                end
            end
                end
            end
            sorat=[sorat v3];
            tt=[tt teta];
            ttt=[ttt d];
    end
end