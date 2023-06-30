#!/usr/bin/perl
use strict;
use warnings;

use lib "$ENV{HOME}/testmod";
use TestMod;

# create instance
my $tobject = TestMod->new();

# sub to print hash
sub phash {
	foreach my $key (keys(%{$tobject->[1]})) {
		print "key: $key\t\t $tobject->[1]->{$key}\n";
	}
}


print "array using geta: @{$tobject->geta()}\n";

print "ref: $tobject->[0]\n";

print "array from ref: @{$tobject->[0]}\n";

# add some to array
$tobject->adda(qw/four five six seven/);
print "array using geta: @{$tobject->geta()}\n";
print "array from ref: @{$tobject->[0]}\n";

# print the hash
phash;

# add even more to array
$tobject->addmorea(qw/eight nine ten eleven/);
print "array using geta: @{$tobject->geta()}\n";
