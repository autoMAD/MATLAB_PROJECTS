function [ roundout ] = KS( roundin )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% Key Schedule

a=ones(16,16);
a(1,1)=99;
a(1,2)=124;
a(1,3)=119;
a(1,4)=123;
a(1,5)=242;
a(1,6)=107;
a(1,7)=111;
a(1,8)=197;
a(1,9)=48;
a(1,10)=1;
a(1,11)=103;
a(1,12)=43;
a(1,13)=254;
a(1,14)=215;
a(1,15)=171;
a(1,16)=118;
a(2,1)=202;
a(2,2)=130;
a(2,3)=201;
a(2,4)=125;
a(2,5)=250;
a(2,6)=89;
a(2,7)=71;
a(2,8)=240;
a(2,9)=173;
a(2,10)=212;
a(2,11)=162;
a(2,12)=175;
a(2,13)=156;
a(2,14)=164;
a(2,15)=114;
a(2,16)=192;
a(3,1)=183;
a(3,2)=253;
a(3,3)=147;
a(3,4)=38;
a(3,5)=54;
a(3,6)=63;
a(3,7)=247;
a(3,8)=204;
a(3,9)=52;
a(3,10)=165;
a(3,11)=229;
a(3,12)=241;
a(3,13)=113;
a(3,14)=216;
a(3,15)=49;
a(3,16)=21;
a(4,1)=4;
a(4,2)=199;
a(4,3)=35;
a(4,4)=195;
a(4,5)=24;
a(4,6)=150;
a(4,7)=5;
a(4,8)=154;
a(4,9)=7;
a(4,10)=18;
a(4,11)=128;
a(4,12)=226;
a(4,13)=235;
a(4,14)=39;
a(4,15)=178;
a(4,16)=117;
a(5,1)=9;
a(5,2)=131;
a(5,3)=44;
a(5,4)=26;
a(5,5)=27;
a(5,6)=110;
a(5,7)=90;
a(5,8)=160;
a(5,9)=82;
a(5,10)=59;
a(5,11)=214;
a(5,12)=179;
a(5,13)=41;
a(5,14)=227;
a(5,15)=47;
a(5,16)=132;
a(6,1)=83;
a(6,2)=209;
a(6,3)=0;
a(6,4)=237;
a(6,5)=32;
a(6,6)=252;
a(6,7)=177;
a(6,8)=91;
a(6,9)=106;
a(6,10)=203;
a(6,11)=190;
a(6,12)=57;
a(6,13)=74;
a(6,14)=76;
a(6,15)=88;
a(6,16)=207;
a(7,1)=208;
a(7,2)=239;
a(7,3)=170;
a(7,4)=251;
a(7,5)=67;
a(7,6)=77;
a(7,7)=51;
a(7,8)=133;
a(7,9)=69;
a(7,10)=249;
a(7,11)=2;
a(7,12)=127;
a(7,13)=80;
a(7,14)=60;
a(7,15)=159;
a(7,16)=168;
a(8,1)=81;
a(8,2)=163;
a(8,3)=64;
a(8,4)=143;
a(8,5)=146;
a(8,6)=157;
a(8,7)=56;
a(8,8)=245;
a(8,9)=188;
a(8,10)=182;
a(8,11)=218;
a(8,12)=33;
a(8,13)=16;
a(8,14)=255;
a(8,15)=243;
a(8,16)=210;
a(9,1)=205;
a(9,2)=12;
a(9,3)=19;
a(9,4)=236;
a(9,5)=95;
a(9,6)=151;
a(9,7)=68;
a(9,8)=23;
a(9,9)=196;
a(9,10)=167;
a(9,11)=126;
a(9,12)=61;
a(9,13)=100;
a(9,14)=93;
a(9,15)=25;
a(9,16)=115;
a(10,1)=96;
a(10,2)=129;
a(10,3)=79;
a(10,4)=220;
a(10,5)=34;
a(10,6)=42;
a(10,7)=144;
a(10,8)=136;
a(10,9)=70;
a(10,10)=238;
a(10,11)=184;
a(10,12)=20;
a(10,13)=222;
a(10,14)=94;
a(10,15)=11;
a(10,16)=219;
a(11,1)=224;
a(11,2)=50;
a(11,3)=58;
a(11,4)=10;
a(11,5)=73;
a(11,6)=6;
a(11,7)=36;
a(11,8)=92;
a(11,9)=194;
a(11,10)=211;
a(11,11)=172;
a(11,12)=98;
a(11,13)=145;
a(11,14)=149;
a(11,15)=228;
a(11,16)=121;
a(12,1)=231;
a(12,2)=200;
a(12,3)=55;
a(12,4)=109;
a(12,5)=141;
a(12,6)=213;
a(12,7)=78;
a(12,8)=169;
a(12,9)=108;
a(12,10)=86;
a(12,11)=244;
a(12,12)=234;
a(12,13)=101;
a(12,14)=122;
a(12,15)=174;
a(12,16)=8;
a(13,1)=186;
a(13,2)=120;
a(13,3)=37;
a(13,4)=46;
a(13,5)=28;
a(13,6)=166;
a(13,7)=180;
a(13,8)=198;
a(13,9)=232;
a(13,10)=221;
a(13,11)=116;
a(13,12)=31;
a(13,13)=75;
a(13,14)=189;
a(13,15)=139;
a(13,16)=138;
a(14,1)=112;
a(14,2)=62;
a(14,3)=181;
a(14,4)=102;
a(14,5)=72; 
a(14,6)=3;
a(14,7)=246;
a(14,8)=14;
a(14,9)=97;
a(14,10)=53;
a(14,11)=87;
a(14,12)=185;
a(14,13)=134;
a(14,14)=193;
a(14,15)=29;
a(14,16)=158;
a(15,1)=225;
a(15,2)=248;
a(15,3)=152;
a(15,4)=17;
a(15,5)=105;
a(15,6)=217;
a(15,7)=142;
a(15,8)=148;
a(15,9)=155;
a(15,10)=30;
a(15,11)=135;
a(15,12)=233;
a(15,13)=206;
a(15,14)=85;
a(15,15)=40;
a(15,16)=223;
a(16,1)=140;
a(16,2)=161;
a(16,3)=137;
a(16,4)=13;
a(16,5)=191;
a(16,6)=230;
a(16,7)=66;
a(16,8)=104;
a(16,9)=65;
a(16,10)=153;
a(16,11)=45;
a(16,12)=15;
a(16,13)=176;
a(16,14)=84;
a(16,15)=187;
a(16,16)=22;
temp=a(2,1);
a(2,1)=a(6,9);
a(6,9)=temp;

b=ones(10,1);

b(1,1)=hex2dec('01');
b(2,1)=hex2dec('02');
b(3,1)=hex2dec('04');
b(4,1)=hex2dec('08');
b(5,1)=hex2dec('10');
b(6,1)=hex2dec('20');
b(7,1)=hex2dec('40');
b(8,1)=hex2dec('80');
b(9,1)=hex2dec('1b');
b(10,1)=hex2dec('36');

round0=[26 135 183 147;12 84 8 12;36 147 14 83;242 188 67 13];
% W(0)
w_0=ones(4,1);
for i=1:4
    for j=1
        w_0(i,j)=round0(i,j);
    end
end


% W(1)
w_1=ones(4,1);
for i=1:4
    for j=1
        w_1(i,j)=round0(i,j+1);
    end
end


% W(2)
w_2=ones(4,1);
for i=1:4
    for j=1
        w_2(i,j)=round0(i,j+2);
    end
end


% W(3)
w_3=ones(4,1);
for i=1:4
    for j=1
        w_3(i,j)=round0(i,j+3);
    end
end

% Round 1
w_3_rot=ones(4,1);
temp=w_3(1,1);
for i=1:3
    for j=1
        w_3_rot(i,j)=w_3(i+1,j);
    end
end
w_3_rot(4,1)=temp;

w_3_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_3_rot(i,j),15);
        e=bitshift(w_3_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_3_sub(i,j)=a(e,d);
    end
end


w_3_temp=w_3_sub;
w_3_temp(1,1)=bitxor(w_3_sub(1,1),b(1,1));


w_4=ones(4,1);
for i=1:4
    for j=1
        w_4(i,j)=bitxor(w_0(i,j),w_3_temp(i,j));
    end
end
disp(w_4);

round1=ones(4,4);
for i=1:4
    for j=1
        round1(i,j)=w_4(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round1(i,j)=bitxor(round1(i,j-1),w_1(i,j-1));
        elseif j==3
            round1(i,j)=bitxor(round1(i,j-1),w_2(i,j-2));
        elseif j==4
            round1(i,j)=bitxor(round1(i,j-1),w_3(i,j-3));
        end
    end
end

% Round 2
w_7=ones(4,1);
for i=1:4
    for j=1
        w_7(i,j)=round1(i,j+3);
    end
end

w_7_rot=ones(4,1);
temp=w_7(1,1);
for i=1:3
    for j=1
        w_7_rot(i,j)=w_7(i+1,j);
    end
end
w_7_rot(4,1)=temp;


w_7_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_7_rot(i,j),15);
        e=bitshift(w_7_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_7_sub(i,j)=a(e,d);
    end
end


w_7_temp=w_7_sub;
w_7_temp(1,1)=bitxor(w_7_sub(1,1),b(2,1));


w_8=ones(4,1);
for i=1:4
    for j=1
        w_8(i,j)=bitxor(w_4(i,j),w_7_temp(i,j));
    end
end


round2=ones(4,4);
for i=1:4
    for j=1
        round2(i,j)=w_8(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round2(i,j)=bitxor(round2(i,j-1),round1(i,j));
        elseif j==3
            round2(i,j)=bitxor(round2(i,j-1),round1(i,j));
        elseif j==4
            round2(i,j)=bitxor(round2(i,j-1),round1(i,j));
        end
    end
end


% Round 3
w_11=ones(4,1);
for i=1:4
    for j=1
        w_11(i,j)=round2(i,j+3);
    end
end

w_11_rot=ones(4,1);
temp=w_11(1,1);
for i=1:3
    for j=1
        w_11_rot(i,j)=w_11(i+1,j);
    end
end
w_11_rot(4,1)=temp;


w_11_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_11_rot(i,j),15);
        e=bitshift(w_11_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_11_sub(i,j)=a(e,d);
    end
end


w_11_temp=w_11_sub;
w_11_temp(1,1)=bitxor(w_11_sub(1,1),b(3,1));


w_12=ones(4,1);
for i=1:4
    for j=1
        w_12(i,j)=bitxor(w_8(i,j),w_11_temp(i,j));
    end
end


round3=ones(4,4);
for i=1:4
    for j=1
        round3(i,j)=w_12(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round3(i,j)=bitxor(round3(i,j-1),round2(i,j));
        elseif j==3
            round3(i,j)=bitxor(round3(i,j-1),round2(i,j));
        elseif j==4
            round3(i,j)=bitxor(round3(i,j-1),round2(i,j));
        end
    end
end


% Round 4
w_15=ones(4,1);
for i=1:4
    for j=1
        w_15(i,j)=round3(i,j+3);
    end
end

w_15_rot=ones(4,1);
temp=w_15(1,1);
for i=1:3
    for j=1
        w_15_rot(i,j)=w_15(i+1,j);
    end
end
w_15_rot(4,1)=temp;
disp(w_15_rot);

w_15_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_15_rot(i,j),15);
        e=bitshift(w_15_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_15_sub(i,j)=a(e,d);
    end
end


w_15_temp=w_15_sub;
w_15_temp(1,1)=bitxor(w_15_sub(1,1),b(4,1));


w_16=ones(4,1);
for i=1:4
    for j=1
        w_16(i,j)=bitxor(w_12(i,j),w_15_temp(i,j));
    end
end


round4=ones(4,4);
for i=1:4
    for j=1
        round4(i,j)=w_16(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round4(i,j)=bitxor(round4(i,j-1),round3(i,j));
        elseif j==3
            round4(i,j)=bitxor(round4(i,j-1),round3(i,j));
        elseif j==4
            round4(i,j)=bitxor(round4(i,j-1),round3(i,j));
        end
    end
end


% Round 5
w_19=ones(4,1);
for i=1:4
    for j=1
        w_19(i,j)=round4(i,j+3);
    end
end

w_19_rot=ones(4,1);
temp=w_19(1,1);
for i=1:3
    for j=1
        w_19_rot(i,j)=w_19(i+1,j);
    end
end
w_19_rot(4,1)=temp;


w_19_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_19_rot(i,j),15);
        e=bitshift(w_19_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_19_sub(i,j)=a(e,d);
    end
end


w_19_temp=w_19_sub;
w_19_temp(1,1)=bitxor(w_19_sub(1,1),b(5,1));


w_20=ones(4,1);
for i=1:4
    for j=1
        w_20(i,j)=bitxor(w_16(i,j),w_19_temp(i,j));
    end
end


round5=ones(4,4);
for i=1:4
    for j=1
        round5(i,j)=w_20(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round5(i,j)=bitxor(round5(i,j-1),round4(i,j));
        elseif j==3
            round5(i,j)=bitxor(round5(i,j-1),round4(i,j));
        elseif j==4
            round5(i,j)=bitxor(round5(i,j-1),round4(i,j));
        end
    end
end

% Round 6
w_23=ones(4,1);
for i=1:4
    for j=1
        w_23(i,j)=round5(i,j+3);
    end
end

w_23_rot=ones(4,1);
temp=w_23(1,1);
for i=1:3
    for j=1
        w_23_rot(i,j)=w_23(i+1,j);
    end
end
w_23_rot(4,1)=temp;


w_23_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_23_rot(i,j),15);
        e=bitshift(w_23_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_23_sub(i,j)=a(e,d);
    end
end

w_23_temp=w_23_sub;
w_23_temp(1,1)=bitxor(w_23_sub(1,1),b(6,1));

w_24=ones(4,1);
for i=1:4
    for j=1
        w_24(i,j)=bitxor(w_20(i,j),w_23_temp(i,j));
    end
end

round6=ones(4,4);
for i=1:4
    for j=1
        round6(i,j)=w_24(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round6(i,j)=bitxor(round6(i,j-1),round5(i,j));
        elseif j==3
            round6(i,j)=bitxor(round6(i,j-1),round5(i,j));
        elseif j==4
            round6(i,j)=bitxor(round6(i,j-1),round5(i,j));
        end
    end
end

% Round 7
w_27=ones(4,1);
for i=1:4
    for j=1
        w_27(i,j)=round6(i,j+3);
    end
end

w_27_rot=ones(4,1);
temp=w_27(1,1);
for i=1:3
    for j=1
        w_27_rot(i,j)=w_27(i+1,j);
    end
end
w_27_rot(4,1)=temp;

w_27_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_27_rot(i,j),15);
        e=bitshift(w_27_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_27_sub(i,j)=a(e,d);
    end
end

w_27_temp=w_27_sub;
w_27_temp(1,1)=bitxor(w_27_sub(1,1),b(7,1));

w_28=ones(4,1);
for i=1:4
    for j=1
        w_28(i,j)=bitxor(w_24(i,j),w_27_temp(i,j));
    end
end

round7=ones(4,4);
for i=1:4
    for j=1
        round7(i,j)=w_28(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round7(i,j)=bitxor(round7(i,j-1),round6(i,j));
        elseif j==3
            round7(i,j)=bitxor(round7(i,j-1),round6(i,j));
        elseif j==4
            round7(i,j)=bitxor(round7(i,j-1),round6(i,j));
        end
    end
end

% Round 8
w_31=ones(4,1);
for i=1:4
    for j=1
        w_31(i,j)=round7(i,j+3);
    end
end

w_31_rot=ones(4,1);
temp=w_31(1,1);
for i=1:3
    for j=1
        w_31_rot(i,j)=w_31(i+1,j);
    end
end
w_31_rot(4,1)=temp;

w_31_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_31_rot(i,j),15);
        e=bitshift(w_31_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_31_sub(i,j)=a(e,d);
    end
end

w_31_temp=w_31_sub;
w_31_temp(1,1)=bitxor(w_31_sub(1,1),b(8,1));

w_32=ones(4,1);
for i=1:4
    for j=1
        w_32(i,j)=bitxor(w_28(i,j),w_31_temp(i,j));
    end
end

round8=ones(4,4);
for i=1:4
    for j=1
        round8(i,j)=w_32(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round8(i,j)=bitxor(round8(i,j-1),round7(i,j));
        elseif j==3
            round8(i,j)=bitxor(round8(i,j-1),round7(i,j));
        elseif j==4
            round8(i,j)=bitxor(round8(i,j-1),round7(i,j));
        end
    end
end

% Round 9
w_35=ones(4,1);
for i=1:4
    for j=1
        w_35(i,j)=round8(i,j+3);
    end
end

w_35_rot=ones(4,1);
temp=w_35(1,1);
for i=1:3
    for j=1
        w_35_rot(i,j)=w_35(i+1,j);
    end
end
w_35_rot(4,1)=temp;

w_35_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_35_rot(i,j),15);
        e=bitshift(w_35_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_35_sub(i,j)=a(e,d);
    end
end

w_35_temp=w_35_sub;
w_35_temp(1,1)=bitxor(w_35_sub(1,1),b(9,1));

w_36=ones(4,1);
for i=1:4
    for j=1
        w_36(i,j)=bitxor(w_32(i,j),w_35_temp(i,j));
    end
end

round9=ones(4,4);
for i=1:4
    for j=1
        round9(i,j)=w_36(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round9(i,j)=bitxor(round9(i,j-1),round8(i,j));
        elseif j==3
            round9(i,j)=bitxor(round9(i,j-1),round8(i,j));
        elseif j==4
            round9(i,j)=bitxor(round9(i,j-1),round8(i,j));
        end
    end
end

% Round 9
w_39=ones(4,1);
for i=1:4
    for j=1
        w_39(i,j)=round9(i,j+3);
    end
end

w_39_rot=ones(4,1);
temp=w_39(1,1);
for i=1:3
    for j=1
        w_39_rot(i,j)=w_39(i+1,j);
    end
end
w_39_rot(4,1)=temp;

w_39_sub=ones(4,1);
for i=1:4
    for j=1
        d=bitand(w_39_rot(i,j),15);
        e=bitshift(w_39_rot(i,j),-4);
        d=d+1;
        e=e+1;
        w_39_sub(i,j)=a(e,d);
    end
end


w_39_temp=w_39_sub;
w_39_temp(1,1)=bitxor(w_39_sub(1,1),b(10,1));


w_40=ones(4,1);
for i=1:4
    for j=1
        w_40(i,j)=bitxor(w_36(i,j),w_39_temp(i,j));
    end
end


round10=ones(4,4);
for i=1:4
    for j=1
        round10(i,j)=w_40(i,j);
    end
end

for i=1:4
    for j=2:4
        if j==2
            round10(i,j)=bitxor(round10(i,j-1),round9(i,j));
        elseif j==3
            round10(i,j)=bitxor(round10(i,j-1),round9(i,j));
        elseif j==4
            round10(i,j)=bitxor(round10(i,j-1),round9(i,j));
        end
    end
end



if roundin==0
    roundout=round0;
elseif roundin==1
    roundout=round1;
elseif roundin==2
    roundout=round2;
elseif roundin==3
    roundout=round3;
elseif roundin==4
    roundout=round4;
elseif roundin==5
    roundout=round5;
elseif roundin==6
    roundout=round6;
elseif roundin==7
    roundout=round7;
elseif roundin==8
    roundout=round8;
elseif roundin==9
    roundout=round9;
elseif roundin==10;
    roundout=round10;
end   
end