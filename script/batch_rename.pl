use strict;
use warnings;

my $dirnam = "/home/yubao/data/Project/blog/html";

opendir(DIR, $dirnam) or die "Cannot open directory: $!";
my @files = readdir(DIR);

foreach my $oldfile (@files) 
{
    unless($oldfile  eq "." || $oldfile eq ".." )
    {           

        my $newfile = lc($oldfile);

        rename "$dirnam/$oldfile", "$dirnam/$newfile" or die "Cannot rename file: $!";
    }

}
