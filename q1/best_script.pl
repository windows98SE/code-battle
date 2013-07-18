#!/usr/bin/perl
open F,'<numbers.txt';while(<F>){chomp$_;$h{$_}=1;}close F;open F,'>run_result.txt';print F join"\n",grep{!$h{$_}}'0000'..'9999';close F;
