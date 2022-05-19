#!/usr/bin/perl
# perl board_gen.pl x y 〇の割合

#validかどうかは自分でチェックしないといけないけど。。。Kもマニュアル入力
#have to delete " from end of file manually

use warnings;
use strict;
use utf8;
use open ":utf8";
binmode STDIN, ':encoding(cp932)';
binmode STDOUT, ':encoding(cp932)';
binmode STDERR, ':encoding(cp932)';

die "format: Side length, Density, Char, Output file name ----- " unless (scalar(@ARGV) == 4);
my ($x, $density, $char, $filename) = @ARGV;
my @pieces = ('P', 'R', 'B', 'Q');
#my $kingx = int(rand($x));
#my $kingy = int(rand($x));

open(DATAFILE, "+>>", $filename) or die "Failed to open a file\n";
#print DATAFILE "$x$density$char.txt\n";
#print "$kingx, $kingy\n";
print DATAFILE "\"";
for (my $i = 0; $i < $x; $i++) {
	for (my $j = 0; $j < $x; $j++) {
		if (int(rand($x) * 2) < $density) {
			#if ($kingx == $j && $kingy == $i) {
			#	print DATAFILE "K";
			#	print "K";
			#} else {
			my $piece = $pieces[rand @pieces];
			print DATAFILE $piece;
			print $piece;
			#}
		}
		else {
			print DATAFILE $char; #change default character
			print $char;
		}
	}
	print DATAFILE "\",\n\"";
	print "\n";
}
close(DATAFILE);