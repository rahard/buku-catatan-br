#! /usr/bin/perl
$topicDB='topics.txt';
open(my $DB, '<', $topicDB) or die $!;
$count=0;
while (<$DB>) { if ($_ =~ "^--") { $count++; } 
else { $topic{$count} = $topic{$count} . $_;} }
close($DB);

$luckyone =  int(rand($count-1));
print $topic{$luckyone};
exit;
