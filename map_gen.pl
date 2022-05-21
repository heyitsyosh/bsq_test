#!/usr/bin/perl
# perl map_gen.pl x y obstacleの割合 empty obstacle output
use warnings;
use strict;
use utf8;
use open ":utf8";
binmode STDIN, ':encoding(cp932)';
binmode STDOUT, ':encoding(cp932)';
binmode STDERR, ':encoding(cp932)';

die "program x y density" unless (scalar(@ARGV) == 6);
my ($x, $y, $density, $empty, $obstacle, $filename) = @ARGV;

open(DATAFILE, "+>>", $filename) or die "Failed to open a file\n";
print DATAFILE $y . $empty  . $obstacle . "x" . "\n";
for (my $i = 0; $i < $y; $i++) {
	for (my $j = 0; $j < $x; $j++) {
		if (int(rand($y) * 2) < $density) {
			print DATAFILE $obstacle;
		}
		else {
			print DATAFILE $empty;
		}
	}
	print DATAFILE "\n";
}
close(DATAFILE);
