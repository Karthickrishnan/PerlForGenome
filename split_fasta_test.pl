use warnings;
use strict;
# BEGIN { our $start_run = time(); }

local $/ = "\n>";  # read by FASTA record
my $scaffold = "";
my $summary = "";
while (my $seq = <>) {
    chomp $seq;
for (my $i = 0, my $scaff = 1; $i < $scaff; $i++)
{
    my ($id) = $seq =~ /^>*(\S+)/;  # parse ID as first word in FASTA header
    if ($id) {
$seq =~ s/^>*.+\n//;
my $file =$id . 'fasta';

$scaffold = ">" . $id . "\n" . $seq . "\n";
open(OUT,">>$file");
print OUT $scaffold;
close OUT;

$scaff++;

}

last;


      
    

 }

     
}
