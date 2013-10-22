clc;
clear all;

% Plaintext
plaintext=[0 0 0 0;0 0 0 0;0 0 0 0;0 0 0 13];

% Key Input
key0=[26 135 183 147;12 84 8 12;36 147 14 83;242 188 67 13];

% Round0
round0_out=ARK(plaintext,key0);

% Round1
bs=BS(round0_out);
sr=SR(bs);
mc=MC(sr);
round1_out=ARK(mc,KS(1));

% Round2
bs=BS(round1_out);
sr=SR(bs);
mc=MC(sr);
round2_out=ARK(mc,KS(2));

% Round3
bs=BS(round2_out);
sr=SR(bs);
mc=MC(sr);
round3_out=ARK(mc,KS(3));

% Round4
bs=BS(round3_out);
sr=SR(bs);
mc=MC(sr);
round4_out=ARK(mc,KS(4));

% Round5
bs=BS(round4_out);
sr=SR(bs);
mc=MC(sr);
round5_out=ARK(mc,KS(5));

% Round6
bs=BS(round5_out);
sr=SR(bs);
mc=MC(sr);
round6_out=ARK(mc,KS(6));

% Round7
bs=BS(round6_out);
sr=SR(bs);
mc=MC(sr);
round7_out=ARK(mc,KS(7));

% Round8
bs=BS(round7_out);
sr=SR(bs);
mc=MC(sr);
round8_out=ARK(mc,KS(8));

% Round9
bs=BS(round8_out);
sr=SR(bs);
mc=MC(sr);
round9_out=ARK(mc,KS(9));

% Round10
bs=BS(round9_out);
sr=SR(bs);
mc=sr;
round10_out=ARK(mc,KS(10));

% Output
clc;
disp('Name: Ravi Kiran Reddy Medhisetty');
disp('Roll No: 103735458');

disp('Plaintext is as follows');
disp(dec2hex(plaintext));

disp('Key is as follows');
disp(dec2hex(key0));

disp('The following are the outputs of each round by giving desired plaintext and key as an input:');
disp('ROUND-0');
disp(dec2hex(round0_out));
disp('ROUND-1');
disp(dec2hex(round1_out));
disp('ROUND-2');
disp(dec2hex(round2_out));
disp('ROUND-3');
disp(dec2hex(round3_out));
disp('ROUND-4');
disp(dec2hex(round4_out));
disp('ROUND-5');
disp(dec2hex(round5_out));
disp('ROUND-6');
disp(dec2hex(round6_out));
disp('ROUND-7');
disp(dec2hex(round7_out));
disp('ROUND-8');
disp(dec2hex(round8_out));
disp('ROUND-9');
disp(dec2hex(round9_out));
disp('ROUND-10');
disp(dec2hex(round10_out));