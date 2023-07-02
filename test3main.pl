#!/usr/bin/perl
use strict;
use warnings;

use lib "$ENV{HOME}/testmod";
use TestMod;

# create instance
my $tobject = TestMod->new();

my $type = ref $tobject;

print "type = " . $type . "\n";

print "\$tobject->getname = " . $tobject->getname() . "\n";

$tobject->setname("This is a new name");
print "\$tobject->getname = " . $tobject->getname() . "\n";

