#!/usr/bin/perl
#win : type numbers.txt | perl best_script.pl>result_run.txt
#nix : cat numbers.txt | ./best_script.pl>result_run.txt
open I,"-";map{$n{$_}=chomp$_}<>;print join"\n",grep{!$n{$_}}'0'x4..'9'x4;
