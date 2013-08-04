#!/usr/bin/perl
#win : type numbers.txt | perl best_script.pl>run_result.txt
#nix : cat numbers.txt | ./best_script.pl>run_result.txt
open I,"-";map{chomp$_=>++$n{$_}}<>;while(($k,$v)=each%n){print"\"$k\", $v\n"if($v>1);};
