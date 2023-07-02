#!/usr/bin/perl
use strict;
use warnings;

use lib "$ENV{HOME}/testmod";
use TestMod;

# create instance
my $tobject = TestMod->new();

my $type = ref $tobject->[2];

print "type = " . $type . "\n";

# get name
my $getname = $tobject->getname();
my $objname = $tobject->[2];
my $deobjname = ${$tobject->[2]};
my $reftoarray = $tobject;
print "\$tobject->getname =" . $getname . "\n";
print "\$tojbect->[2] = " . $objname . "\n";
print "\${\$tobject->[2]} = " . $deobjname . "\n";
print "\$tobject = " . $reftoarray . "\n";

# set the name using the reference
${$tobject->[2]} = "this should be the new name";
$getname = $tobject->getname();
print "\${\$tobject->[2]} = " . ${$tobject->[2]} . "\n";
print "\$tobject->getname = " . $getname . "\n";


# get the array

