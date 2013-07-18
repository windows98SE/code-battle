#!/usr/bin/perl
open F,"<numbers.txt";while(<F>){$_=~s/\r?\n//ig;$h{$_}=1;}close F;@r=grep{!$h{$_}}'0000'..'9999';open F,">run_result.txt";print F join"\n",@r;close F;
