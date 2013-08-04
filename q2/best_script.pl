#!/usr/bin/perl
#win : type numbers.txt | perl best_script.pl>run_result.txt
#nix : cat numbers.txt | ./best_script.pl>run_result.txt
open I,"-";map{chomp$_=>++$n{$_}}<>;for(keys(%n)){print"\"$_\", $n{$_}\n"if($n{$_}>1);};
