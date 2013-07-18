#!/usr/bin/perl
open F,"<numbers.txt";while(<F>){$_=~s/\r?\n//ig;++$h{$_};}close F;open F,">run_result.txt";while(($k,$v)=each%h){print F "\"$k\", $v\n";}close F;
