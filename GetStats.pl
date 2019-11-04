use warnings;
use strict;


local $/ = "\n>";  # read by FASTA record
my $scaffold = "";
# my $seq_cut_off = $ARGV[0];
my $scaff_count = 0;
my $summary = "";
while (my $seq = <>) {
    chomp $seq;
for (my $i = 0, my $scaff = 1; $i < $scaff; $i++)
{
    my ($id) = $seq =~ /^>*(\S+)/;  # parse ID as first word in FASTA header
    if ($id) {
$seq =~ s/^>*.+\n//;

my $scafflength = length $seq;
# my $len_cut_off = $seq_cut_off/100;
# my $nr_of_lines = $seq =~ tr/\n//;
# if ($nr_of_lines >= $len_cut_off)
# if ($scafflength > $seq_cut_off)
# {
$scaff_count = $scaff_count + 1;

$scaffold = $scaffold . "\n" . $id . "\t" . $scafflength . "\n";
$scaff++;
# }


last;


      
    }

 }

     
}
# $summary = "Number of Scaffolds above " . $seq_cut_off . " bases : " . $scaff_count;
# $scaffold = $summary . "\n" . $scaffold;
print "\n$scaffold\n";