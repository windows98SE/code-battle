#!/usr/bin/perl
#win : type numbers.txt | perl best_script.pl>result_run.txt
#nix : cat numbers.txt | ./best_script.pl>result_run.txt
open I,"-";map{chomp$_=>++$n{"$_"}}<>;for(sort keys(%n)){print"\"$_\", $n{$_}\n"if($n{$_}>1);};
