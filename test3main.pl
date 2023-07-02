#!/usr/bin/perl
use strict;
use warnings;

use lib "$ENV{HOME}/testmod";
use TestMod;

# create instance
my $tobject = TestMod->new();

my $type = ref $tobject->[2];

print "type = " . $type . "\n";

print "\$tobject->getname = " . $tobject->getname() . "\n";

print "\$tobject->[2] = " . $tobject->[2] . "\n";

print "\${\$tobject->[2]} = " . ${$tobject->[2]} . "\n";

${$tobject->[2]} = "new name for TestMod, set by using reference";

print "\$tobject->getname = " . $tobject->getname() . "\n";

print "\${\$tobject->[2]} = " . ${$tobject->[2]} . "\n";
