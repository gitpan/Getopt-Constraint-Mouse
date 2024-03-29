package Getopt::Constraint::Mouse;
use 5.008005;
use strict;
use warnings;
use Mouse;
with qw(MouseX::Getopt::GLD);

our $VERSION = "0.03";

sub get_options {
    my ($class, @args) = @_;
    while (my ($key, $val) = splice @args, 0, 2) {
        next if ref $val ne 'HASH';
        has $key => ( is => 'ro', %$val);
    }
    $class->new_with_options()
}

1;
__END__

=encoding utf-8

=head1 NAME

Getopt::Constraint::Mouse - A command line options processor uses Mouse's type constraints

=head1 SYNOPSIS

in your script

    #!perl
    use Getopt::Constraint::Mouse;

    my $options = Getopt::Constraint::Mouse->get_options(
        foo => +{
            isa           => 'Str',
            required      => 1,
            documentation => 'Blah Blah Blah ...',
        },
        bar => +{
            isa           => 'Str',
            default       => 'Bar',
            documentation => 'Blah Blah Blah ...',
        },
    );

    print $options->{foo}, "\n";
    print $options->{bar}, "\n";

use it

    $ perl ./script.pl --for=Foo --bar=Bar
    Foo
    Bar

    $ perl ./script.pl
    Mandatory parameter 'foo' missing in call to (eval)

    usage: script.pl [-?] [long options...]
    	-? --usage --help  Prints this usage information.
    	--foo              Blah Blah Blah ...
    	--bar              Blah Blah Blah ..

=head1 QUESTIONS

=head2 What are supported Types?

See L<MouseX::Getopt#Supported-Type-Constraints> for details.

=head2 What are supported Options?

See L<MouseX::Getopt#METHODS> for details.

=head1 SEE ALSO

L<MouseX::Getopt>

=head1 LICENSE

Copyright (C) Hiroki Honda.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Hiroki Honda E<lt>cside.story@gmail.comE<gt>

=cut

