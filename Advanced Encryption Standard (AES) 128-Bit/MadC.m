function [ temp ] = MadC( a,b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if a==1
    temp=b;
elseif a==2
    if(b>=128)
        mad_1=bitshift(b,1);
        mad_1=bitxor(mad_1,27);
    elseif(b<128)
        mad_1=bitshift(b,1);
    end
    if(mad_1>255)
        mad_1=bitxor(mad_1,256);
    end
    temp=mad_1;
elseif a==3
    if(b>=128)
        mad_2=bitshift(b,1);
        mad_2=bitxor(mad_2,27);
    elseif(b<128)
        mad_2=bitshift(b,1);
    end
    if(mad_2>255)
        mad_2=bitxor(mad_2,256);
    end
    
    temp3_1=mad_2;
    temp3_2=b;
    temp=bitxor(temp3_1,temp3_2);
end