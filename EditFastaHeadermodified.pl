use warnings;
use strict;


local $/ = "\n>";  # read by FASTA record
my $scaffold = "";

while (my $seq = <>) {
    chomp $seq;
for (my $i = 0, my $scaff = 1; $i < $scaff; $i++)
{
    my ($id) = $seq =~ /^>*(\S+)/;  # parse ID as first word in FASTA header
    if ($id) {
$seq =~ s/^>*.+\n//;
my ($substring) = $id =~ s/\ *//sr;

# $id = substr $id,0,40;


$scaffold = $scaffold . $substring . "\n" . $seq . "\n";
$scaff++;



last;


      
    }

 }

     
}

print "$scaffold\n";