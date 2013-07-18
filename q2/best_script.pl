#!/usr/bin/perl
my %numbers = readfile('numbers.txt');

open F, ">", 'run_result.txt';
#elegant but actually 30% slower :P
#print F "\"$_\", $numbers{$_}\n" for (keys %numbers);
while (my ($k,$v)=each %numbers){
  print "\"$k\", $v\n";
}
close F;


sub readfile{
  my %var;
  open F, "<", $_[0];
  while (my $line = <F>){
    $line =~ s/\r?\n//ig;
    ++$var{$line};
  }
  close(F);
  return %var;
}
