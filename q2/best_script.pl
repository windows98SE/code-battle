#!/usr/bin/perl
open F,'<numbers.txt';while(<F>){chomp$_;++$h{$_};}open F,'>run_result.txt';print F"\"$_\", $h{$_}\n"for(keys%h);
