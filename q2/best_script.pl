#!/usr/bin/perl
#win : type numbers.txt | perl best_script.pl>result_run.txt
#nix : cat numbers.txt | ./best_script.pl>result_run.txt
open I,"-";map{chomp$_=>$n{$_}++}<>;print "\"$_\", $n{$_}\n"for(keys%n);
