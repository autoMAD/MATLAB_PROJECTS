function [ sr ] = SR( bs )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
sr=bs;
for i=2:4
    if(i==2)
        for j=1:4
            if(j==4)
                sr(i,j)=bs(i,j-3);
            else
                sr(i,j)=bs(i,j+1);
            end
        end
    end
    if(i==3)
        for j=1:4
            if((j==3)||(j==4))
                sr(i,j)=bs(i,j-2);
            else
                sr(i,j)=bs(i,j+2);
            end
        end
    end
    if(i==4)
        for j=1:4
            if((j==2)||(j==3)||(j==4))
                sr(i,j)=bs(i,j-1);
            else
                sr(i,j)=bs(i,j+3);
            end
        end
    end
end
end