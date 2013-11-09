package Getopt::Constraint::Mouse;
use 5.008005;
use strict;
use warnings;
use Mouse;
with qw(MouseX::Getopt::GLD);

our $VERSION = "0.01";

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

    # in your script
    use Getopt::Constraint::Mouse;

    my $options = Getopt::Constraint::Mouse->get_options(
        foo => +{ isa => 'Str', required => 1     },
        bar => +{ isa => 'Str', default  => 'Bar' },
    );

    my $foo = $options->{foo};
    my $bar = $options->{bar};

=head1 SEE ALSO

L<MouseX::Getopt>

=head1 LICENSE

Copyright (C) Hiroki Honda.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Hiroki Honda E<lt>cside.story@gmail.comE<gt>

=cut

