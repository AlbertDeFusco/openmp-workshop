#!/usr/bin/perl
#

use Math::Trig;


for($i=0;$i<=1.0;$i=$i+@ARGV[0])
{
  $int=4.0/(1+$i*$i);
  printf("%6.3f  %12.10f\n",$i,$int);
}
if(@ARGV[0]==0.025)
{
  printf("%6.3f  %12.10f\n",1.0,2.0);
}
