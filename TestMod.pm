package TestMod;

# a test module which is a class.
use strict;
use warnings;

# some instance variables
my @d1 = qw/one two three/;

my %hd = (a => "one", b => "two", c => "three");
my $name = "TestMod";
my $namep = "private data";

# constructor
sub new {
	my $class = shift;
	my $self = [\@d1, \%hd, \$name];
	bless $self, $class;
	return $self;
}

# sub to set array
sub adda {
	my $self = shift;
	push @d1, @_;
}

# sub to get array
sub geta {
	my $self = shift;
	return \@d1;
}

# sub to get name2 private data
sub getnamep {
	my $self = shift;
	return $namep;
}

# sub to add even more to array
sub addmorea {
	my $self =shift;
	$self->adda(@_);
}

# get name
sub getname {
	my $self = shift;
	return $name;
}
# this is the last line of the module and must be here
1;
