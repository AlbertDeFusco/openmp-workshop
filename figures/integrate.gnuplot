set term pdf font ", 12"
set out 'integrate.pdf'
set style fill transparent solid 0.1 border -1
plot [-0.5:1.5]  4/(1+x*x) w l notitle lw 2, '<./atan.pl 0.2' w boxes notitle

set out 'integrate2.pdf'
plot [-0.5:1.5]  4/(1+x*x) w l notitle lw 2, '<./atan.pl 0.025' w boxes notitle
