
use warnings;
use strict;


local $/ = "\n>";  # read by FASTA record
my $scaffold = "Sequence_Id	As	Ts	Gs	Cs	Sequence_len	AT %	GC %";
my $scaff_count = 0;
my $summary = "";
while (my $seq = <>) {
    chomp $seq;
for (my $i = 0, my $scaff = 1; $i < $scaff; $i++)
{
    my ($id) = $seq =~ /^>*(\S+)/;  # parse ID as first word in FASTA header
    if ($id) {
$seq =~ s/^>*.+\n//;
$seq =~ s/\s+//g;
my $scafflength = length $seq;
my $Astring = ($seq =~ tr/Aa//);
my $Tstring = ($seq =~ tr/Tt//);
my $Gstring = ($seq =~ tr/Gg//);
my $Cstring = ($seq =~ tr/Cc//);
my $ATstrings = ((($Astring + $Tstring)/$scafflength) * 100);
my $GCstrings = ((($Gstring + $Cstring)/$scafflength) * 100);

$scaff_count = $scaff_count + 1;

$scaffold = $scaffold . "\n" . $id . "\t" . $Astring . "\t" . $Tstring . "\t" . $Gstring . "\t" . $Cstring . "\t" . $scafflength . "\t" . $ATstrings . "\t" . $GCstrings;
$scaff++;



last;


      
    }

 }

     
}
# $summary = "Number of Scaffolds above " . $seq_cut_off . " bases : " . $scaff_count;
# $scaffold = $summary . "\n" . $scaffold;
print "$scaffold\n";