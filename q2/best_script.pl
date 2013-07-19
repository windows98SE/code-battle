#!/usr/bin/perl
#win : type numbers.txt | perl test.pl>result_run.txt
#nix : cat numbers.txt | ./test.pl>result_run.txt
open I,"-";map{chomp$_=>$n{$_}++}<>;print "\"$_\", $n{$_}\n"for(keys%n);
