#!/usr/bin/perl
my @array = ('0000'..'9999');
my %numbers = readfile('numbers.txt');
my @run_result = grep {!$numbers{$_}} @array; 

open F, ">", 'run_result.txt';
print F join "\n", @run_result;
close F;


sub readfile{
  my @var;
  open F, "<", $_[0];
  while (my $line = <F>){
	$line =~ s/\r?\n//ig;
	push(@var, $line);
  }
  close(F);
  return map {$_=>1} @var;
}
